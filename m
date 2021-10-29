Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9D3440146
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 19:25:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635528345;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w2YdTsRDi+DvAHB80mBSH8WemlKwfGxbxB64710NJ0E=;
	b=cLxIdYbEKolh3Q7lXoLL7O57dWQficdCbALL6COCq2lONOYPS0GoTddHiFa2pP6hlIv8dz
	5WkBShK0bbLpu2kRorXEAaawXCsTDRkMslK1Q1Ac7ROxt02nLBIIL6Zb7iIy4iSvGSei9M
	LpPXIf2DiFOGWEG8/E+EVW5TrZ6eyaY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-jRyBRsRUMQmcW32MhrByIQ-1; Fri, 29 Oct 2021 13:25:13 -0400
X-MC-Unique: jRyBRsRUMQmcW32MhrByIQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4169879510;
	Fri, 29 Oct 2021 17:25:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E374219D9B;
	Fri, 29 Oct 2021 17:25:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 543411806D04;
	Fri, 29 Oct 2021 17:25:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19THP0N8032498 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 13:25:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E59EE40CFD11; Fri, 29 Oct 2021 17:24:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E05E240CFD0B
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 17:24:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C698F800882
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 17:24:59 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-548-Ej6qfIIrPlu_pNLNv5y-7w-1; Fri, 29 Oct 2021 13:24:57 -0400
X-MC-Unique: Ej6qfIIrPlu_pNLNv5y-7w-1
Received: by mail-qv1-f44.google.com with SMTP id t1so6836579qvb.1
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 10:24:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=X1u6wPf4OCM3iPXPGIU/+DV8IhyhhSEKtP/+k3+pFPI=;
	b=kmyUBMtcSZvc1aV1WEnRZgoaEmWy8jJ04lAWwxO6vbVRve/g6wxcktDLCF+bGjbbTH
	S769RW5bSlS3eMxn6HnHzJ70+dPYlIpoXg8+TuxZsFeM8lrq+jniylzreaM0UK8zcSoW
	T3FzSLnXjFrgx/GYL6BPusm1KwIat2YBrSUlwLn3UkdWB6u3n9/IUnc+GBrujBVS0LLJ
	kf6QJjo3n3NNzVXCd6aOQjadT5zmSs/GbpuBze6hAJirwtvEZ2jxg6wgIooQUvB/Z/bv
	r7KGWZ6SCiGqCo+N3smuPzoGkV2N1av7qgentt18r31wOg3v8s/Y4FPTIJZOuD2a8zE4
	/suw==
X-Gm-Message-State: AOAM531uGP8uAg7POgswIQyoXiVg9ojLkcvK19rNqH3W/qvAR3YXumLD
	RQL1iZFGmD5XTeVuX9+/MOP66biXEiY=
X-Google-Smtp-Source: ABdhPJw7BvQAtgxelNqywVRZqjIZ3Rn5AUcjkj8lQqOoKcdk/C/y/ezIbHCBlJoF4v0q3nXvPnzkvA==
X-Received: by 2002:a05:6214:212d:: with SMTP id
	r13mr12670657qvc.22.1635528296884; 
	Fri, 29 Oct 2021 10:24:56 -0700 (PDT)
Received: from smtpclient.apple ([2601:152:4000:330:592a:2dd8:926e:97e1])
	by smtp.gmail.com with ESMTPSA id
	b21sm2649567qtk.69.2021.10.29.10.24.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 10:24:56 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Accessible Coconut speech at startup
Date: Fri, 29 Oct 2021 13:24:55 -0400
Message-Id: <A28FA6FD-D263-49A8-A589-54154D864D34@gmail.com>
References: <E9D6D917-4032-4FAC-82FF-C1BF23682E36@gmail.com>
In-Reply-To: <E9D6D917-4032-4FAC-82FF-C1BF23682E36@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19THP0N8032498
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgdGhlcmUgYSBzdGVwIGJ5IHN0ZXAgdHV0b3JpYWwgb24gaG93IHRvIHN0YXJ0PwpJIGRvd25s
b2FkZWQgdGhlIGFjY2Vzc2libGUgY29jb251dCBpc28gYW5kIHB1dCBpdCBvbiBhIGJvb3RhYmxl
IHVzYiBkcml2ZS4gSSB3YXMgYWJsZSB0byBib290IHRoZSBtYWNoaW5lIGZyb20gdGhlIHVzYiwg
YnV0IHRoZXJlIHdhcyBubyBzcGVlY2ggdG8gZ3VpZGUgbWUuIEkgd2FzIGFibGUgdG8gY29uZmly
bSB0aGF0IEkgaW5kZWVkIGJvb3RlZCBmcm9tIHVzYiB3aXRoIGFjY2Vzc2libGUgY29jb251dCBi
eSB1c2luZyBteSBpUGhvbmUgY2FtZXJhLiBJIGhhdmUgbm8gaWRlYSBob3cgdG8gZ2V0IHRoZSBz
cGVlY2ggZ29pbmcuIFNvIHBsZWFzZSBpZiB5b3UgaGF2ZSBhIHR1dG9yaWFsLCBzZW5kIGl0IG15
IHdheS4KSWJyYWhpbQoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBPY3QgMjksIDIwMjEsIGF0
IDEwOjI5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79IZWxsbywKPiBXaGVuIHVzaW5nIHRoZSBsaXZl
IENELCBUaGUgc2NyZWVucmVhZGVyIHN0YXJ0ZWQgYXQgYm9vdC4KPiBCdXQgYSAgYWZ0ZXIgSSBp
bnN0YWxsZWQgaXQsIEkgZ2V0IG5vIHNjcmVlbnJlYWRlciBhdCBzdGFydHVwLgo+IEFsbCBzZXR0
aW5ncyBhcyBmYXIgYXMgSSBrbm93IGFyZSBjb3JyZWN0Lgo+IFRoZSBvbmx5IHdheSB0byBnZXQg
c3BlZWNoIGlzIHRvIGdvIHRvIHRoZSBydW4gd2luZG93IHdpdGggCj4gQWx0K0YyCj4gVGhlbiB0
eXBlIAo+IG9yY2EKPiBBbmQgcHJlc3MgZW50ZXIuCj4gSSByZWluc3RhbGxlZCBsaW51eCBhbmQg
Z290IHRoZSBzYW1lIHJlc3VsdC4KPiBBcyBJIHdhcyBkb2luZyB0aGUgaW5zdGFsbCwgSSBjaGVj
a2VkIHRoZSBib3ggdG8gZ2V0IHVwZGF0ZXMgZHVyaW5nIHRoZSBpbnN0YWxsLiBDb3VsZCB0aGlz
IGJlIHRoZSBjYXVzZSBvZiBteSB0cm91YmxlPwo+IAo+IFRoYW5rcywKPiBSb2IKPiAKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

