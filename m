Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 467654BBD1D
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 17:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645200812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KhxuXGscCsa9b9SshUFdxz0He4OcLC2i5PJxzGv6Dm8=;
	b=gR6SNoRxHB0LwgRXdpVMIbWuYGoRhgqyvYSWMF5gJt2krEXU+0o/cW/pas8ZGhZUmkxJA2
	ObmjroR8vzlE030Ff36lv0d81746gelmO1UFiTfpjNRTiTN/fAoQ1rzVg4/7dUoqqhI08d
	oTgQ519WbT4XSdBKeBLqH6pwqLthgMk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-228-2ilIO5f_NX64IMC9VNOy2A-1; Fri, 18 Feb 2022 11:13:30 -0500
X-MC-Unique: 2ilIO5f_NX64IMC9VNOy2A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E62EB1091DA0;
	Fri, 18 Feb 2022 16:13:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DFF3F10A48A0;
	Fri, 18 Feb 2022 16:13:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2A94E1832DA0;
	Fri, 18 Feb 2022 16:13:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IGDDVG018654 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 11:13:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9801448FB0E; Fri, 18 Feb 2022 16:13:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 93C4C40D1CE
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:13:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A39E185A7A4
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 16:13:13 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-634-zP5byVnEPpWbO5KdJX-7XA-1; Fri, 18 Feb 2022 11:13:11 -0500
X-MC-Unique: zP5byVnEPpWbO5KdJX-7XA-1
Received: by mail-wr1-f54.google.com with SMTP id u1so15376927wrg.11
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 08:13:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=9ZMM2gcTFZ9wta2HNqb6FHHBkY7H/pjui/+/VimGht8=;
	b=JSoDASC+pnFRXg0N+eBcdzDTd2T8uNxEs23C1rv4B/bef7BWaollnTunXEVe5X7+ab
	TV/mTC06x+0hnQYntRTbHBbbVtghSk5Hgq9KpBkrndlJzSOzclYi66MhSLwg4hsc+VUf
	k3bjD638UYnFcgozQxUmzyZkJzGqzRzbBTcc4xlxl4rHnvfLjaWxwwAQrLUbxwuoUIEr
	7KqWlD18QvNBM1hOW80Cdm5NNAckYoVgwhJzCTmAocDiDro8fgfOShRbZjtqQLSjJAPY
	A6G835jgE0PwNvJUplD8NhjoRNmdaXMIeRB7fyRNZDsZuEHSlW1jc9BLQwdKSJFpN0t2
	4tTA==
X-Gm-Message-State: AOAM5318WnEdWLo1O+W8pQM6jcMLg5a1jM54Pcq5JFp3HWWhKeLEqiLs
	3mLvermREgno1bLdrY3HOPgLYIQt5fNc1g==
X-Google-Smtp-Source: ABdhPJyhX841fy5VNwOkZQEUpyhyshwT8HvMTloUGANnj+tMnKwezMyLdmCBL5SLvWUU4O4ahoNAjA==
X-Received: by 2002:a05:6000:3ce:b0:1e4:b2ba:e3e3 with SMTP id
	b14-20020a05600003ce00b001e4b2bae3e3mr6581990wrg.204.1645200790147;
	Fri, 18 Feb 2022 08:13:10 -0800 (PST)
Received: from [192.168.8.130] ([197.184.176.211])
	by smtp.gmail.com with ESMTPSA id
	t16sm5200645wmq.43.2022.02.18.08.13.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 08:13:09 -0800 (PST)
Message-ID: <98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
Date: Fri, 18 Feb 2022 18:13:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.6.1
Subject: Re: Accessibility of installing Distros?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
In-Reply-To: <ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

U29tZXRpbWVzIGl0IHdvdWxkIGZpbmlzaCB0aGUgaW5zdGFsbCwgdGhlbiByZWJvb3QsIGFuZCBj
b21lIHVwIHNwZWFraW5nIAp3aXRoIEZlbnJpciB3aXRoIGEgdmVyeSBhbm5veWluZyB2b2ljZSwg
ZXNwZWNpYWxseSBpZiB5b3UsIGxpa2UgbWUgaXMgCmxlZ2FsbHkgZGVhZmJsaW5kLCB0aGVuIGFm
dGVyIHR5cGluZyB5b3VyIHVzZXJuYW1lIGFuZCBwYXNzd29yZCwgRmVucmlyIAp3b3VsZCBqdXN0
IGRpZSBhbmQgeW91IGFyZSBzdHVjaywgSSBrbm93IGl0J3MgYSBkZXNrdG9wIGVudmlyb25tZW50
LCBidXQgCm5vdGhpbmcgdHVybnMgb3JjYSBvbi4KCgpTbyBtdWNoIGZvciBhbiBhY2Nlc3NpYmxl
IGRpc3Ryby4KCgpUaGlzIGlzIHdoeSBJIGxvdmUgU2xpbnQuIEl0IGRvZXMgZXhhY3RseSB3aGF0
ICJ5b3UiLCB0ZWxsIGl0IHRvIGRvLCBub3QgCnRoZSBkZXYuCgoKTm8gZGlzcmVzcGVjdCB0byBN
ci4gTmFzaCwgSSdtIHN1cmUgaGUncyBhIHBlcmZlY3RseSBuaWNlIGd1eSwgbm90IHRoYXQgCkkn
dmUgZXZlciBzcG9rZW4gdG8gaGltIHRob3VnaC4KCldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVl
bmthbXAKClNlbnQgZnJvbSB0aGUgU2xpbnQgbWFjaGluZSB1c2luZyBUaHVuZGVyYmlyZAoKT24g
MjAyMi8wMi8xOCAxNzoxMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90
ZToKPiBNYWtlcyBhdCBsZWFzdCB0d28gb2YgdXMuwqAgVGhlIGluc3RhbGxlciBhbHdheXMgZm91
bmQgaXRzZWxmIGxvb3BpbmcgCj4gYW5kIHJlcGVhdGluZyBmYWlsZWQgcGFja2FnZSByZXRyaWV2
YWwuCj4KPgo+Cj4gQ2hlZXJzLAo+Cj4KPgo+IERhdmUKPgo+Cj4KPgo+IE9uIDIvMTcvMjIgMTM6
MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IEkgY291bGQg
bmV2ZXIgZ2V0IEplbnV4IHRvIHdvcmsgY29ycmVjdGx5IG9uIG15IHNldHVwLgo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

