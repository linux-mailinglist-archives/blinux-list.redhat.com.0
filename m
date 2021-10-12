Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0C7A342AE9B
	for <lists+blinux-list@lfdr.de>; Tue, 12 Oct 2021 23:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634073421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=grYPiRsWjs81/eVQci9j+NhEqA1lz3bKtR0Irt3/RJM=;
	b=PiUaGjr0t50f/9ap2RU2Dn8RVa7fHLQlyrkCbvKwkoxFWFUrW1CS+va+HxNuFp8oS1e9p5
	zARqeJh9E+DMzrC7o2jFuD5vlBXP1+jbkBpBHO5qI+upKPlxeDAkp1W9WRXIjbNaY3QVCk
	vId9EcHb65u7ErX1SQLZBT+UB36PyL4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-JuO0lbyxNeGeUMoqQyhtXw-1; Tue, 12 Oct 2021 17:16:57 -0400
X-MC-Unique: JuO0lbyxNeGeUMoqQyhtXw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CAFB09F92A;
	Tue, 12 Oct 2021 21:16:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21CBD22719;
	Tue, 12 Oct 2021 21:16:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1BCED1803B30;
	Tue, 12 Oct 2021 21:16:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CLGK8R019264 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 17:16:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B694D2026D5D; Tue, 12 Oct 2021 21:16:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B15DB2026D46
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 21:16:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED052185A79C
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 21:16:16 +0000 (UTC)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-160-hJUZZ0U1MYqcCT-sUtIkCg-1; Tue, 12 Oct 2021 17:16:15 -0400
X-MC-Unique: hJUZZ0U1MYqcCT-sUtIkCg-1
Received: by mail-ot1-f46.google.com with SMTP id
	x33-20020a9d37a4000000b0054733a85462so976806otb.10
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 14:16:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=XXD4uDAJ6cdRcifcGJZdvh5UW4ZGdy/dpQ36qn9vAsY=;
	b=XHayVyem+AL0EhF9j1DFAf1osgZy3hPCmlSNVFcyz7Mcthj06T8CuCp40bcnAtRYIu
	Jdi31SuZ9EFhYOvOh7pJLeMI/Oa3vACu3/lGRWwVWKPft6QC35+ewuYA9pBXdTZGLetC
	juardTkQ1ONAFC9aEqUwlZl3X+R8eszjfecGnqt2zGw1nyfvrjMVEIs5bLm9M7zMk5Eo
	i0Abs3dIrXev18jBypMaRaJtuBuGHPO9gb4tpZneJkthvTuymsGiSlFK/9WGR6EPPwNL
	ZGpCsQ9eJUwc0Sf2AKmn88x+2CL+3j5ftkSzjaP0zovKtTBOUMfD/GG5viHiio7RUknn
	s3ag==
X-Gm-Message-State: AOAM530i43Rv6yybclxiojPv2J5f9uN/9RnCHsLtgjS2bRK8/RUE4GhU
	x/2Xxb93CAgtxiym8TvaREPV2T9XqgE=
X-Google-Smtp-Source: ABdhPJx7eNpWjf4rmmOxH4c4YpaSw/KDqMDscip0enE/vghQD11PVTG4cD10VoYBtJGz1E2qzTKyjA==
X-Received: by 2002:a9d:12b2:: with SMTP id g47mr16554351otg.227.1634073374352;
	Tue, 12 Oct 2021 14:16:14 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:58d0:fb73:2550:ef8e])
	by smtp.gmail.com with ESMTPSA id 16sm1707284oty.20.2021.10.12.14.16.13
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Oct 2021 14:16:14 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Tue, 12 Oct 2021 16:16:13 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
Message-Id: <6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19CLGK8R019264
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWZ0ZXIgaW5zdGFsbGluZywgSSBoZWFyZCDigJlzY3JlZW4tcmVhZGVyIG9mZuKAmSwgc28gSSB0
dXJuZWQgb3JjYSBvbi4KVGhlbiBJIHdhcyB0b2xkIHRvIHJlYm9vdC4KQWZ0ZXIgcmVib290aW5n
LCBJIHR1cm5lZCBvcmNhIG9uLCB0aGVuIGxvZ2dlZCBpbi4KVGhlbiwgbm8gc3BlZWNoLgpDb3Vs
ZCBub3QgZ2V0IG9yY2Egd29ya2luZy4KCj4gT24gT2N0IDEyLCAyMDIxLCBhdCA3OjEyIEFNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPiAKPiBBIGh1Z2UgKzEgZm9yIEZlZG9yYSBNQVRFLiBJIGhhdmUgaXQgcnVubmlu
ZyBvbiB0d28gY29tcHV0ZXJzIGhlcmUsIG9uZSBpcyBub3QgbWluZSwgYW5kIGl0IHdvcmtzIGdy
ZWF0LiBPcmNhIGNvbWVzIHdpdGggaXQsIGFuZCB5b3UgY2FuIHJ1biBhIGZ1bGwgaW5zdGFsbCBh
ZnRlciBwcmVzc2luZyBhbHQrZjIgdG8gb3BlbiB0aGUgcnVuIHdpbmRvdyBhbmQgdGhlbiBlbnRl
cmluZyB0aGUgd29yZCBvcmNhLiBXaWZpIGdlbmVyYWxseSB3b3JrcyBvdXQgb2YgdGhlIGJveCwg
dGhvdWdoIHRoZSBOZXR3b3JrTWFuYWdlciBhcHBsZXQgdGhhdCBjb250cm9scyBpdCBkb2Vzbid0
IHRlbGwgeW91IHdoYXQgaXQgaXMuIFN0aWxsLCB5b3UgY2FuIGp1c3QgaG9sZCB0aGUgYWx0IGFu
ZCBjb250cm9sIGtleXMgYW5kIGRvdWJsZSB0YXAgdGhlIHRhYiBrZXkgdG8gZ2V0IHRvIHRoZSB0
b3AgcGFuZWwsIHRoZW4gc2hpZnQgdGFiIHBhc3QgdGhlIHRvZ2dsZSBidXR0b24gYW5kIHByZXNz
IHRoZSBlbnRlciBrZXkgdG8gYnJpbmcgdXAgdGhlIG1lbnUgdGhhdCBoYXMgeW91ciB3aWZpIGNv
bm5lY3Rpb25zLiBUaGVyZSdzIG5vdCBtdWNoIG1vcmUgdG8gdGVsbCBvdGhlciB0aGFuIGl0J3Mg
YSBncmVhdCBPUywgbm90IGp1c3QgZm9yIGxlYXJuaW5nLCBidXQgZm9yIGRhaWx5IHVzZSwgYW5k
IG9uZSBvZiB0aGUgY29tcHV0ZXJzIGluIHRoZSBob3VzZSB0aGF0IGlzIHJ1bm5pbmcgaXQgaXMg
ZXZlbiBiZWluZyB1c2VkIGZvciBnYW1pbmcgYW5kIGxpdmUgc3RyZWFtaW5nLiBJZiB5b3UgbmVl
ZCB0byBkaWcgZGVlcGVyIGludG8gdGhlIGd1dHMgb2YgdGhlIHN5c3RlbSwgaXQgYWxsb3dzIGZv
ciB0aGF0IGFzIHdlbGwuIEkgZm9yIG9uZSBoaWdobHkgcmVjb21tZW5kIHRoZSBGZWRvcmEgTUFU
RSBzcGluLgo+IAo+IH5LeWxlCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

