Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D985D45B123
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 02:29:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637717365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5jXT6kKT/g4xZy0Cvuz027Y6fytz6I7fsoyyNb0kFis=;
	b=Q39UoIUosoQTiqm/zhYeLX7oVxw6XOR3aJalJkwoynh2qFo3eEtb0tAah9CKBN4yRhkQtA
	/cG+P1jTDYv/DjCTpu48ZPuO9Ed6092pe2Os/OVKSc02+UkVfjl+ToYnsFZgiMVX/O1K82
	0LVqtRY3wR2d1OUFA0n4oSHuMUkjmnA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-181-o2gF4IeSOambLlic_dVaKg-1; Tue, 23 Nov 2021 20:29:22 -0500
X-MC-Unique: o2gF4IeSOambLlic_dVaKg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E547C5EF;
	Wed, 24 Nov 2021 01:29:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7E37F72435;
	Wed, 24 Nov 2021 01:29:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 111CC4A703;
	Wed, 24 Nov 2021 01:29:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AO1TAvS009141 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 20:29:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EFE1D400F3C3; Wed, 24 Nov 2021 01:29:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB7E4400F3C1
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 01:29:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D132E85A5AA
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 01:29:09 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-429-BJMn0vlxNOm2Fx_fiEzilw-1; Tue, 23 Nov 2021 20:29:08 -0500
X-MC-Unique: BJMn0vlxNOm2Fx_fiEzilw-1
Received: by mail-qt1-f169.google.com with SMTP id m25so1076907qtq.13
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 17:29:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=EvVEkBmVjy6ERRnru1k7aC3OpM5nALln3YAbp0BBAc4=;
	b=AIPMG2mshCEe5Q7P6zlCPnyz6vsWSA5WBGMvDljkmedprg6g4wfhcZd7/LiLe5HWt9
	7jw2W+aH8sc4Fx7hwaNKVvOeTYX5kGLCrPEjjgOLmTsuEGKfPVvhTLO1qoZpS+xckW1r
	h3voN6l5EZMZhVC4vSiaeVzkKRyRniG/cWorhe09HFLgWTA48QU11oQtLoMYR9a77gS+
	5uQQQrmWyX49oQ5tJjexPI31BAO5mEXu/h3ouCEPG8+R3LSj9FdNb2P6cQ1Kh7ML/eSu
	ekGwVEn4QGNid8sCC2dpMktFA3veYV9e4pIlZkbCfXEfLjB0E1gLno0m0xewQsVQf/yq
	l9og==
X-Gm-Message-State: AOAM531lLffoEuciof3tL+1YLA+53zGzzM7wlpURAxJdVjcOZpUaS+Ov
	clI8UaRhCpTYM/x8tI6pL7u+Iz2BGvgFaRTe
X-Google-Smtp-Source: ABdhPJwhu9eun5gZtRe03obRRJkH76DfNiHKfh/vZLwLGEovMkbBse21+y3rNRrMfLdKFZWkQnJJeA==
X-Received: by 2002:a05:622a:2c9:: with SMTP id
	a9mr2354832qtx.28.1637717347559; 
	Tue, 23 Nov 2021 17:29:07 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id
	i23sm6859293qkl.101.2021.11.23.17.29.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 23 Nov 2021 17:29:07 -0800 (PST)
Subject: Re: looking for two gui accessible applications ClipGrab
To: blinux-list@redhat.com
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
	<CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
	<a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
	<9ec61018-27d4-8eb3-98a2-3ac4cd8a0ca5@gmail.com>
	<alpine.NEB.2.23.451.2111231652480.18399@panix1.panix.com>
	<d670e5e3-afac-2b50-e4d9-7e80bb283c9a@gmail.com>
	<5e0eb707-adb4-ef23-6398-4ffdd559d705@gmail.com>
Message-ID: <293beba8-ebb3-d3e8-5a79-dfccdb01ffde@gmail.com>
Date: Tue, 23 Nov 2021 20:29:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <5e0eb707-adb4-ef23-6398-4ffdd559d705@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIG5vIGlkZWEsCgpJIGxpdmUgaW4gUm9ja3ZpbGxlIE1hcnlsYW5kLCBpbiB0aGUgVW5p
dGVkIFN0YXRlcy4gSW4gTWFyeWxhbmQgdGhleSAKbGlzdCAxMSBhcmVhcyBhbmQgZWFjaCBvZiB0
aGVtIGhhcyBhIG51bWJlciBvZiBzdWItYXJlYXMuIE15IGNvdW50eSAKd2hpY2ggaXMgTW9udGdv
bWVyeSBjb3VudHnCoCB3YXMgbm90IGxpc3RlZCBhdCBhbGwuIEkgYWxzbyBzZWFyY2hlZCBmb3Ig
ClJyb2NrdmlsbGUgTUQgYW5kIEkgZm91bmQgbm90aGluZy4KCkNoZWVycywKCklicmFoaW0KCk9u
IDExLzIzLzIxIDg6MjIgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4gTWF5YmUgaXQgb25seSBzaG93cyBjaXRpZXMgd2l0aCBpbnRlcm5hdGlvbmFsIGFycG9y
dHM/Cj4KPgo+IC1EYXZlCj4KPgo+Cj4gT24gMTEvMjMvMjEgMjA6MTksIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IGNpdHkgbGlzdGVkLsKgIFNvIEkgaGFkIHRv
IGNob29zZSBhIGNpdHkgZm91cnR5IG1pbGVzIHRvIHRoZSBub3J0aCBvZiAKPj4gd2hlcmUgSSBs
aXZlLCBhbHRob3VnaCBteSBjaXR5IGlzIGV2ZW4gYmlnZ2VyIHRoYW4gdGhlIG9uZSBsaXN0ZWQu
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

