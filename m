Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6D85A364020
	for <lists+blinux-list@lfdr.de>; Mon, 19 Apr 2021 13:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618830174;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1KE0ReHzGvHB/39hSL5NigLjmO9hCzwlW6wXjGOhLgY=;
	b=DhQayVoD2D/b/z7i3E96A7zYd5QyyFXEI4zSOQJ+hD+2POSjMYq/5buqACTfqKMqheBHql
	Q7tEZlDDTZl+GJNDALDmPNrN4AYifrD0B1JZewO/FyIdtfTnf4n0YM3if3XogH4VyR1QYW
	97U2RgjQ4if6Yxl9TMh+CmgP5JlVr3Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-Hyqc05dhNHSlYMwbDcxzOQ-1; Mon, 19 Apr 2021 07:02:52 -0400
X-MC-Unique: Hyqc05dhNHSlYMwbDcxzOQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 620CE5B364;
	Mon, 19 Apr 2021 11:02:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A9E410023AB;
	Mon, 19 Apr 2021 11:02:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 389AE44A57;
	Mon, 19 Apr 2021 11:02:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13JB2SBb007235 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 19 Apr 2021 07:02:28 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8BFBF2160289; Mon, 19 Apr 2021 11:02:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85F6A2160283
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 11:02:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DFE948028BE
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 11:02:24 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com
	[209.85.218.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-560-u40aQVWnPB2t5g8QyPFZpQ-1; Mon, 19 Apr 2021 07:02:22 -0400
X-MC-Unique: u40aQVWnPB2t5g8QyPFZpQ-1
Received: by mail-ej1-f49.google.com with SMTP id w23so36422685ejb.9
	for <blinux-list@redhat.com>; Mon, 19 Apr 2021 04:02:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=pkOlgPiHkrsls+32ibmDODKU5wNOcWg0PdOz6C8LMFE=;
	b=rUlfsGWtgqSozufsYi6Cily+oLVi8ufR+Wlf1GITvv0oMUROkS9qT6oQj5zT69CKnJ
	RbhXdKoH4pPxtsoRgI1PhJcoCv8nkwWVmK9UzDK/6DJETQsXu2u1jDame1RPxKtXpbxD
	uzWD0wmFxnQ2M2jrNJJGbGgqKfL0kQvWUn5x3kt6kUkjy+Xp94tztSIRFS6V85vASyfb
	gOCTPvU+Zejps5tMYhvAWIh3Gu+iMiItOfKWc5i1H1T2SuDt4h/wSwtUJICA+7gPqu6j
	p1Ti3T0iQLj0gn9s7XnXsLBgr3KC3aOIK1zmiFQoxZsH4Ix9/VmPZOcY5Ehwi1rVXqou
	7wEA==
X-Gm-Message-State: AOAM530Nw05yS7QG7qT/Xdfl2MDkodAShlzPgmEeqB87SyXpsfSoWnug
	R4zycT+9udlao0dgFvAEobpcWHwpf+TP2Q==
X-Google-Smtp-Source: ABdhPJyGUa3854TeRR+0yQEY9LrBmHHSTyQpO3hXVLAgVFOYJc/aeOyCRpv/e6m97xQ7zcLBSOPgtg==
X-Received: by 2002:a17:906:6a15:: with SMTP id
	o21mr21189948ejr.40.1618830141334; 
	Mon, 19 Apr 2021 04:02:21 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id k5sm3565998edk.46.2021.04.19.04.02.20
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 19 Apr 2021 04:02:20 -0700 (PDT)
Subject: Re: Some questions about Arch Linux
To: blinux-list@redhat.com
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
Message-ID: <0aba9b69-ebe1-e929-5132-ca28b7f97d26@gmail.com>
Date: Mon, 19 Apr 2021 14:02:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.1
MIME-Version: 1.0
In-Reply-To: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

MTEuMDQuMjAyMSAxNzo1NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IEhlbGxvIGV2ZXJ5b25lLAo+CmhlbGxvLgo+Cj4gU2luY2Ugd2UncmUga2luZCBv
ZiBpbiB0aGUgc3ViamVjdCBhbnl3YXlzLCBsZXQgbWUgYXNrIGFub3RoZXIgCj4gcXVlc3Rpb24s
IHRvdGFsbHkgdW5yZWxhdGVkLCBidXQgc3RpbGwgYWJvdXQgQXJjaDoKPgo+IEkndmUgaW5zdGFs
bGVkIHRoZSBzeXN0ZW0sIGFuZCBldmVyeXRoaW5nIHdvcmtzIGZpbmUsIGJ1dCBub3QgCj4gYWNj
ZXNzaWJpbGl0eSwgbm90IGFzIGl0IHdvcmtlZCBpbiBVYnVudHUgYW5kIEZlZG9yYSBhdCBsZWFz
dC4KPgo+IFdoZW4gSSB0eXBlZCBpbiB0aGUgdGVybWluYWwKPgo+IGV4cG9ydCBBQ0NFU1NJQklM
SVRZX0VOQUJMRUQ9MQo+Cj4gYWxsIGluIGNhcHMgZWNjZXB0IGV4cG9ydCwgYW5kIEkgdHJpZWQg
dG8gc3RhcnQgZ29vZ2xlLWNocm9tZSwgbm90aGluZyAKPiB0YWxrZWQuCj4Kd2hpY2ggZGVza3Rv
cCBlbnZpcm9ubWVudCBhcmUgeW91IHVzaW5nPyBpcyBhY2Nlc3NpYmlsaXR5IGVuYWJsZWQgaW4g
Cml0J3Mgc2V0dGluZ3M/Cgo+IE9uZSBvdGhlciBhcHAgdGhhdCBkaWRuJ3QgdGFsaywgd2FzIFNp
Z25hbCBkZXNrdG9wLCB3aGljaCBJIG1hbmFnZWQgdG8gCj4gdXNlIHdvbmRlcmZ1bGx5IG9uIGJv
dGggVWJ1bnR1IGFuZCBGZWRvcmEsIHNvIGJhc2ljYWxseSwgYWNjZXNzaWJpbGl0eSAKPiBpc24n
dCB3b3JraW5nIGFzIGl0IHNob3VsZCBiZSBJIGFtIGd1ZXNzaW5nLgo+Cj4gSSBhbHNvIG1vZGlm
aWVkIHRoZSAueGluaXRyYyBmaWxlIGF0IC9ldGMvWDExL3hpbml0L3hpbml0cmMsIHNpbmNlIAo+
IHRoYXQncyB0aGUgb25seSBvbmUgd2hpY2ggaXMgYXZhaWxhYmxlLCBhbmQgSSBpbnNlcnRlZCB0
aGUgZm9sbG93aW5nIAo+IGxpbmVzIGF0IHRoZSBlbmQgb2YgdGhlIGZpbGUsIGFmdGVyIGluc3Rh
bGxpbmcgdGhlIHN5c3RlbToKPgo+Cj4gZXhwb3J0IEdUS19NT0RVTEVTPWdhaWw6YXRrLWJyaWRn
ZQp0aGlzIGlzbid0IG5lZWRlZCBhbnltb3JlLgo+IGV4cG9ydCBHTk9NRV9BQ0NFU1NJQklMSVRZ
PTEKPiBleHBvcnQgUVRfQUNDRVNTSUJJTElUWT0xCj4gZXhwb3J0IFFUX0xJTlVYX0FDQ0VTU0lC
SUxJVFlfQUxXQVlTX09OPTEKPiBleHBvcnQgQUNDRVNTSUJJTElUWSBFTkFCTEVEPTEKPgo+IE5v
dGhpbmcgc3RpbGwuCj4KYXMgZmFyIGFzIEkga25vdyB0aGlzIGZpbGUgZG9lc24ndCByZWFkIGlm
IHlvdSBub3QgdXNpbmcgc3RhcnR4IHByb2dyYW0uCgo+IEFueSBoZWxwIHdvdWxkIGJlIGFwcmlj
aWF0ZWQuCj4KPiBCZXN0IHJlZ2FyZHMuCj4KPiBGcmFuY2lzY28uCj4KLS0gCgpTaW5jZXJlbHks
IEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

