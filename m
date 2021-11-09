Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A8BC44B146
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 17:32:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636475529;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=blz9maL5xsOmWbfe1d2sr3FIClkBkKaJgokbJV07BE0=;
	b=BHqSBC0891/boFHV/+RuyfgfHnHBmXZNqtwFWxJmTUTpbOkJwg0NcNny2ZA26rNdy1xbdd
	BDO/8nhn4OI8A07/WT3jJruju7tAjRhjaIFviTpzsDQMkQLXZoXn3aCo8hfknPQaVyhKIv
	XBDhhDINt1RwkhwYj1bi2BwJwlAWOec=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-37-o0SAxDnuPp6EotKr1gGK3g-1; Tue, 09 Nov 2021 11:32:04 -0500
X-MC-Unique: o0SAxDnuPp6EotKr1gGK3g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6EA687D551;
	Tue,  9 Nov 2021 16:32:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF2A25FCB3;
	Tue,  9 Nov 2021 16:31:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 636AD181A1D0;
	Tue,  9 Nov 2021 16:31:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A9GVrwJ024838 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 9 Nov 2021 11:31:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 47D1351E5; Tue,  9 Nov 2021 16:31:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 428A951E3
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 16:31:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B43F811E7A
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 16:31:50 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-51-LyKFv31ANpeTzwdtHJYXIg-1; Tue, 09 Nov 2021 11:31:48 -0500
X-MC-Unique: LyKFv31ANpeTzwdtHJYXIg-1
Received: by mail-qk1-f170.google.com with SMTP id r8so19280230qkp.4
	for <blinux-list@redhat.com>; Tue, 09 Nov 2021 08:31:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=cDahyb9rcie5TAlzjYrpjpHzzZK/oAo4pMWallcn6oU=;
	b=RFLcj6CrZRafgm6GrjfRhgV9qZ4J2F/5Wds9d/nGepxi3sOEVI2kMujVU5/iq+a9UE
	tD7h+K/dtEvmYqoeqX9QD0udu+wrakd1vtH8N0AZBzoQPW+odgQqXZx9iRsqG/h/mA95
	8eYN0ipaDkD2LPgLPZizrMxyPrgmAKHwc8UFAYMV3Qi0isXSsPD0pkZ48DLqa6n+XElx
	F/7W5ERBtwuV1jZbu63pv8VZBPG+GAUKtybIS4NeQqWXkWhyu9V5fM3ZwNTE74GBla+1
	xl1d10GwnGBl1b7XJPBKjLRwZ2jkqYhR16/0PFTEOKCwOImL9oN8Z6GQ4SBNiOVWy6+1
	+NEA==
X-Gm-Message-State: AOAM530lt1B56A8pa40FS7z+ZU9gh+jv4M27VthrJGe9yrmqqi9/dpvg
	e0mK3BeJgHmbK34Vnjj8Ab0ZLAHnnA6BgQ==
X-Google-Smtp-Source: ABdhPJy6APe2EckQTPGvtXVrRvKTbveH9vhraIrCPlWDV6C3L74XYF3zLIQENT6C/8wFFfz1rj/kxA==
X-Received: by 2002:a05:620a:190e:: with SMTP id
	bj14mr7051623qkb.94.1636475507755; 
	Tue, 09 Nov 2021 08:31:47 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::f])
	by smtp.gmail.com with ESMTPSA id
	v15sm12139660qkl.91.2021.11.09.08.31.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 09 Nov 2021 08:31:46 -0800 (PST)
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
	<f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
Message-ID: <c24ee84b-4865-ffec-40bb-1382b16d8fb3@gmail.com>
Date: Tue, 9 Nov 2021 11:31:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBhbHNvIG5vdGljZWQgdGhhdCB0aGVyZSBhcmUgdHdvIG1lbnUgZW50cmllcyBmb3IgdGVsZWdy
YW0uwqAgSSBhbSBub3QgYSAKdXNlciBvZiB0ZWxlZ3JhbSwgYnV0IG91dCBvZiBjdXJpb3VzaXR5
IEkgY2xpY2tlZCBvbiBib3RoIHRvIHNlZSB3aGF0IApvcHRpb25zIGRvIEkgZ2V0LCBhbmQgSSBj
b3VsZCBub3QgZmluZCBhbnkgb3B0aW9ucyBvciBtZW51cyBvciAKaW5zdHJ1Y3Rpb25zIHRvIHVz
ZS4KCkNoZWVycywKCgpJYnJhaGltCgpPbiAxMS84LzIxIDc6MjggUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgSWJyYWhpbSwKPgo+IE9mZiB0b3BpYyBi
dXQgc3RpbGwuLi4KPiBJIFNsaW50IHdlIHNoaXA6Cj4gbmNUZWxlZ3JhbSBodHRwczovL2dpdGh1
Yi5jb20vTmFub3NlYi9uY1RlbGVncmFtCj4gVGVsZWdyYW0gRGVza3RvcCAoSSBqdXN0IHJlYWxp
emVkIHRoYXQgd2UgaGF2ZSB0d28gbWVudSBlbnRyaWVzID8/PykKPiB0ZWxlZ3JhbS1jbGkgaHR0
cHM6Ly9naXRodWIuY29tL3Z5c2hlbmcvdGcKPiB0ZWxlZ3JhbS1wdXJwbGUgKHBsdWctaW4gZm9y
IHBpZGdpbikgCj4gaHR0cHM6Ly9naXRodWIuY29tL21ham4vdGVsZWdyYW0tcHVycGxlIChtYXli
ZSBzd2l0Y2ggdG8gdGRsaWItcHVycGxlKQo+Cj4gQWxsIHRoaXMgaW4gYWRkaXRpb24gdG8gVGVs
ZWdyYW0gV0VCIGFuZCBUZWxlZ3JhbSBvbiB5b3VyIHBob25lLgo+Cj4gSnV0cyBzYXlpbmcuLi4K
Pgo+IENoZWVycywKPiBEaWRpZXIKPgo+IExlIDA4LzExLzIwMjEgw6AgMTk6MzUsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGVsbG8gZm9sa3MsCj4+
Cj4+IEkgYW0gd29uZGVyaW5nIGlmIGFueSBvZiB5b3UgdXNlIGFuIGFjY2Vzc2libGUgTGludXgg
Y2xpZW50IGZvciAKPj4gV2hhdHNhcHAuIFdoYXQgaXMgdGhlIGJlc3Qgd2F5IG9mIHVzaW5nIFdo
YXRzYXBwIG9uIExpbnV4IGlmIG5vIAo+PiBhY2Nlc3NpYmxlIGNsaWVudCBpcyBhdmFpbGFibGU/
Cj4+Cj4+IEFueSBpZGVhcz8KPj4KPj4gQ2hlZXJzLAo+Pgo+PiBJYnJhaGltCj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

