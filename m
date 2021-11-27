Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD71460080
	for <lists+blinux-list@lfdr.de>; Sat, 27 Nov 2021 18:26:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638033958;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OUy9klfBPOnnd/XhwIjKZS1/KLqG7ftItHzQBAemfnA=;
	b=AD6u+Jo4kqbOvSAGHCfavYciSOeLypFiBd642NCz2jb+hOkRaoFgpn349bQdfyNVwZOcyc
	gPbNuiCGCRlgQ5qEMTlASGGoVBXzxgk+mgwU98y1drefKuV8yt8Y6uCMLn8Bb8KsAs1nt0
	8RD957keAc2tp5+OaOm//VuxuRmECXE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-375-GgGLVEr9NmS7Z7krqrkaKw-1; Sat, 27 Nov 2021 12:25:57 -0500
X-MC-Unique: GgGLVEr9NmS7Z7krqrkaKw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 306FD1006AA0;
	Sat, 27 Nov 2021 17:25:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA8111000324;
	Sat, 27 Nov 2021 17:25:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5035A1809C89;
	Sat, 27 Nov 2021 17:25:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARHPZoP010681 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 12:25:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DC637401E51; Sat, 27 Nov 2021 17:25:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D7E8A401E4F
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 17:25:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BDF031066558
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 17:25:35 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-185-HACy1MxoP8qxcU_2ExJ3KQ-1; Sat, 27 Nov 2021 12:25:33 -0500
X-MC-Unique: HACy1MxoP8qxcU_2ExJ3KQ-1
Received: by mail-qt1-f173.google.com with SMTP id v22so11994998qtx.8
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 09:25:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=OjC52jDBsOrWag4worMOFuBk7h6UTSPw5mVzVZWkABg=;
	b=fR3q8zBAckxFIAJmMGJgv13KG6qWqAd6HVPjBnaVfRvp0VPUZ0zAj0i8I9BqyLJpKU
	b8tQWPogowFKEtIQ8IptGcAIl43z+IUUyF3uAixwiE2hMzOZNclTiNjsYXDrLKA/C2A1
	sBO35zDlV0DcL2WeyND56eQPew2mGp0S4Kb3gLeCAqUAGFho83FSn/H29rqoCes5k+xT
	xaCJ0YhNNnDGUNzODy7r/nUacPu1M20Exe+KcU7caqGg+WrhQHKAUJ8zEdjzCLeAbG+U
	gdd851tVKB9awfUeIokfAI/OzDjlfCdjwcx6Q0u/rYsZh5MG1hjK7X6m1oYe3fnEMm0O
	LRGw==
X-Gm-Message-State: AOAM531VzQq0vfY9QauAT6X+g/e7IM2Xb+zZJ4OxlWBw9Kl+cm+DB8r/
	Rdol6Ue86ht5pvUn9tu5Y9zI5x0nhxbhMVWm
X-Google-Smtp-Source: ABdhPJzB03Gd55IIRmjWJX9GnP29NYrS9M+AMZL6e2nSL7hUisam+xjDJRVkFP4dQYdLpn6EDIL+OQ==
X-Received: by 2002:ac8:7d11:: with SMTP id g17mr24362016qtb.460.1638033932612;
	Sat, 27 Nov 2021 09:25:32 -0800 (PST)
Received: from smtpclient.apple ([2601:152:4000:330:9cd1:172f:5616:8857])
	by smtp.gmail.com with ESMTPSA id 2sm5108195qkr.126.2021.11.27.09.25.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Nov 2021 09:25:31 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: looking for two gui accessible applications
Date: Sat, 27 Nov 2021 12:25:31 -0500
Message-Id: <8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
In-Reply-To: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENoaW1lLiBJIGhhdmUgbm90IHRob3VnaHQgb2YgdGhpcyBvbmUuIEl0IGlzIGEgZ3Jl
YXQgc3VnZ2VzdGlvbi4KV2hhdCBJIGhhdGUgdGhlIG1vc3QgYWJvdXQgdGVybWluYWwgYXBwcyBh
bmQgY29tbWFuZCBsaW5lcyBpcyBoYXZpbmcgdG8gcmVtZW1iZXIgc28gbWFueSBvcHRpb25zIGFu
ZCBwYXJhbWV0ZXJzIHdpdGggZGFzaGVzIGFuZCBzbGFzaGVzIGFuZCBjb21tYXMgYW5kIHN1Y2gu
CkNoZWVycywKSWJyYWhpbQoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBOb3YgMjcsIDIwMjEs
IGF0IDExOjUyIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79IaSBJYnJhaGFtOiBMYWNraW5nIGFueSBh
bHRlcmF0aW9ucyBpbiB5b3VyIGNvbmZpZywgSSB3b3VsZCBqdXN0IGNkIG92ZXIgdG8gd2hlcmUg
eW91IHdhbnQgdG8gc2F2ZSB0aG9zZSBmaWxlcywgYmVmb3JlIHJ1bm5pbmcgeXQtZGxwLiBBbmQg
aWYgeW91ciBmaWxlcyBjb21lIGZyb20gbGlua3MsIHN1Y2ggYXMgYW4gcnNzIGZlZWQsIHRoZW4g
ZnJvbSBMIFkgTiBYICB5b3UgY2FuIGhpdCBhIGNhcGl0b2wgYyB0byBjaGFuZ2UgZGlyZWN0b3Jp
ZXMuCj4gQ2hpbWUKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

