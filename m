Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5E9F932702B
	for <lists+blinux-list@lfdr.de>; Sun, 28 Feb 2021 04:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614483128;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=G9WFdoUoGGHWtiK2Jkg71E2ktNBvwT8clsqYKupDT1g=;
	b=IrjMI47TYBK2Xr5n/syLXsXewvwLvl05yAH8AuHbzlovMk29i7nu4kpzMKkIFmH39PPQpt
	HVonZjPtgooRdxzKUxrD+SbJE9SmaivZ0WMCgMfMDImF6Fs3tP+aDjJ1u1bgGq6dfDmQFh
	/73Y2IoN5RifHnPXlSTlJB3jrq0iAP0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-597-YxJbvhueP9-2J1J2Cid9Ig-1; Sat, 27 Feb 2021 22:32:05 -0500
X-MC-Unique: YxJbvhueP9-2J1J2Cid9Ig-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B244910066F4;
	Sun, 28 Feb 2021 03:32:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ACF8C5DF36;
	Sun, 28 Feb 2021 03:32:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CEF8D18095CB;
	Sun, 28 Feb 2021 03:31:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11S3VrdW017865 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Feb 2021 22:31:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CB604202A434; Sun, 28 Feb 2021 03:31:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4268202A424
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 03:31:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90D889988E6
	for <blinux-list@redhat.com>; Sun, 28 Feb 2021 03:31:51 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-232-ShQWl2ecPfKHOfr5ng_69A-1; Sat, 27 Feb 2021 22:31:49 -0500
X-MC-Unique: ShQWl2ecPfKHOfr5ng_69A-1
Received: by mail-qk1-f171.google.com with SMTP id s7so3188691qkg.4
	for <blinux-list@redhat.com>; Sat, 27 Feb 2021 19:31:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=WAcc05LZuYoudoGHN1rHMhUAt82i91+GiDuqkOHfl/s=;
	b=SDbBJyZ1TooZDSKLbJVaehlUX+cSvkLAK/fR2OaO+ekkeTnOan2Yrv8GvzKzTn1W9I
	yz5nLoniQqiIj1BT5R3MYDVElW+CK2MbagExH9y06MVBV4mnqQr42SHNGf8Y5wDqg8OQ
	2zPWbVzsVO9w8XIVk4LEGhA47bRXxrtaknhtBHkfVvX6/T7avo1Ntm5w8ehsS5UKySSC
	xyxasST57PMWcjqlnQlRqx3mOODMDbsx65KzRD1ihGe7mkiaILLacUjlqv0h1mqvsx3n
	iLyvPCWT/uPOcR9c7QTJPJvtZI1JGcMJTExpcOuYhST80CJQ6kdXEIRoAk4913+jB+F6
	Sx5A==
X-Gm-Message-State: AOAM530wWEmMXbOar+F+zpKubUbrZD1FhGkIFleuggq0XslUUqGsVh+R
	53Qs1EXya7uJBgmn8M3nPs1Q/KTQZgc=
X-Google-Smtp-Source: ABdhPJwOei1Q9Kh+4IRzOYCapO259lCwV6WMWDU+Q8MaocFKf+QhdTaCLfQUZ+KJtLhjeK16tjLduw==
X-Received: by 2002:a05:620a:1294:: with SMTP id
	w20mr822656qki.477.1614483108585; 
	Sat, 27 Feb 2021 19:31:48 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::f84?
	(2603-6080-6304-450a-0000-0000-0000-0f84.res6.spectrum.com.
	[2603:6080:6304:450a::f84])
	by smtp.gmail.com with ESMTPSA id z11sm913244qkg.52.2021.02.27.19.31.48
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Feb 2021 19:31:48 -0800 (PST)
Subject: Re: Running Android Voices in Linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <161402110590.7.5238133071708249059.4109089@simplelogin.co>
	<161444854854.8.6967526014575932372.4265918@slmail.me>
	<e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<161446814123.8.7902586507444098707.4271150@simplelogin.co>
	<161447494525.8.17811239841066658738.4272534@slmail.me>
Message-ID: <1bfa808f-e9d5-a8fd-16f9-887376aa4b95@gmail.com>
Date: Sat, 27 Feb 2021 22:31:47 -0500
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <161447494525.8.17811239841066658738.4272534@slmail.me>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TXkgYmVzdCBzdWdnZXN0aW9uIG5vdyBpcyB0byBjbG9uZSBSSFZvaWNlIGZyb20gZ2l0IGFuZCB0
cnkgdG8gYnVpbGQgaXQgCnRoYXQgd2F5LiBGaXJzdCBjaGFuZ2UgeW91ciBkZWZhdWx0IE9yY2Eg
dm9pY2UgdG8gc29tZXRoaW5nIG90aGVyIHRoYW4gClJIVm9pY2UsIGFzIHlvdSBkb24ndCB3YW50
IHRvIGxvc2Ugc3BlZWNoIGlmIHNvbWV0aGluZyBnb2VzIHdyb25nLiAKVW5pbnN0YWxsIHRoZSBS
SFZvaWNlIHBhY2thZ2UgeW91IGluc3RhbGxlZC4gTm93IHN0YXJ0IGJ5IGluc3RhbGxpbmcgaXRz
IApidWlsZCBkZXBlbmRlbmNpZXMuCgpzdWRvIGFwdC1nZXQgYnVpbGQtZGVwIHJodm9pY2UKCkkg
dGhpbmsgdGhlIGNvbW1hbmQgdG8gY2xvbmUgdGhlIGdpdCB3YXMKCmdpdCBjbG9uZSAtLXJlY3Vy
c2l2ZSBodHRwczovL2dpdGh1Yi5jb20vcmh2b2ljZS9yaHZvaWNlLmdpdAoKVGhlbiB5b3UganVz
dAoKY2Qgcmh2b2ljZQoKIMKgwqDCoCBzY29ucyBwcmVmaXg9Ii91c3IiIHN5c2NvbmZkaXI9Ii9l
dGMiCgpzdWRvIHNjb25zIGluc3RhbGwKCllvdSBtYXkgYWxzbyBuZWVkIHRvIGNyZWF0ZSBhIHN5
bWJvbGljIGxpbmsgdGhhdCBsaW5rcyB0aGUgUkhWb2ljZSAKc3BlZWNoLWRpc3BhdGNoZXIgbW9k
dWxlIGludG8gdGhlIHJpZ2h0IHBsYWNlLgoKbG4gLXMgIi91c3IvYmluL3NkX3Jodm9pY2UiICIv
dXNyL2xpYi9zcGVlY2gtZGlzcGF0Y2hlci1tb2R1bGVzL3NkX3Jodm9pY2UiCgpzaG91bGQgZG8g
dGhhdC4gUmVzdGFydCBzcGVlY2gtZGlzcGF0Y2hlciBhbmQgT3JjYSBvciB0aGUgY29tcHV0ZXIg
YW5kIAp5b3Ugc2hvdWxkIGJlIGdvb2QgdG8gZ28uIFVwb24gY2hhbmdpbmcgT3JjYSdzIHZvaWNl
IGJhY2sgdG8gUkhWb2ljZSwgCnlvdSBzaG91bGQgc2VlIGFsbCB0aGUgdm9pY2VzIGluIHRoZSBw
ZXJzb24gZHJvcGRvd24gYm94LCBhbHRob3VnaCB5b3UgCndpbGwgYWxzbyBuZWVkIHRvIGJlIHN1
cmUgdGhhdCB0aGUgbGFuZ3VhZ2UgaXMgc2V0IHRvIEVuZ2xpc2guCgp+S3lsZQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

