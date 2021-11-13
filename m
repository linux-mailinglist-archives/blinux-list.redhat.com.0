Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C927A44F461
	for <lists+blinux-list@lfdr.de>; Sat, 13 Nov 2021 18:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636825889;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oUifZtwiWv3lgeLKE9akUHW7QzlHW+hcDEILbJLmu2A=;
	b=JMrMRiDrG8A63JiArpXDBRatgWFE4BmQYU2sC/PahL6fgy33dgRKYtnxk1ihkYSy7Rc7YQ
	lixRT7kKobVl9vuv0Pn0j1aY9XRkKgbfA4Ndex/dAX8y2Qah8bOi+6S+9SZpWYu9NP7bBh
	k+qUVdD9+OqcS4qEcHqiVWH3TSkB2tw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-54-lh5fIymfMF6KuvRW_xLfdA-1; Sat, 13 Nov 2021 12:51:26 -0500
X-MC-Unique: lh5fIymfMF6KuvRW_xLfdA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3DB5B1006AA1;
	Sat, 13 Nov 2021 17:51:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7409E60C4A;
	Sat, 13 Nov 2021 17:51:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EE9E4E590;
	Sat, 13 Nov 2021 17:51:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ADHkiRQ007371 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 13 Nov 2021 12:46:44 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 03504404727E; Sat, 13 Nov 2021 17:46:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F356B404727D
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 17:46:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB4F38007B1
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 17:46:43 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-556-RR6tr5VfOnWO7HhK6X74fg-1; Sat, 13 Nov 2021 12:46:42 -0500
X-MC-Unique: RR6tr5VfOnWO7HhK6X74fg-1
Received: by mail-qt1-f169.google.com with SMTP id t34so11588979qtc.7
	for <blinux-list@redhat.com>; Sat, 13 Nov 2021 09:46:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ksQH41VHHdE7YkwYSB6wbDLVBUl8+pgEc++svLNdkVE=;
	b=Xyuvk21QzOeX5sRFyi0OSZhMVBjTOMkEyPb3r+uVlHcGUeXAf4AmSv+S80mr6NRjNn
	ztCzIRURIJvAnGCBJvZ1zQ5mR/8TBQCOuryDUu99cyj0H85MZ5Ubs/Lbn8Z78nlOJvUG
	uA1moY/EY8TL3WIB2Rq3gR8hWgCqSVZk59mua5bcTTPtSjVg0ix49KHBm/vB/omrsePd
	+S4kNxpZpzKQsoAH0JjOEPwBG6lF3kwqVJTaKySj43IRYY5jgHl9WpDz3RA4R+o7USlt
	AxsjxGrwjJAiy59N7/cvNnZFIUwBNjUpUpS50l/38ekHxzM9VhQN4SHWrsiupijsdqZZ
	6Rbg==
X-Gm-Message-State: AOAM530FolzGBM4/NeumpdxTIC4UNVzT3vzoCHnWu617G47xC4aO1ajF
	+LpxKqrKGwi+GIzjMa9OJwwyuEj6sDglUQ==
X-Google-Smtp-Source: ABdhPJzpmVH0xuquQCSfohjXpkIIp1MRYn7QInBYsGzEwdsm8h37QLUpwb1X9FmHwO/amops+ktyYA==
X-Received: by 2002:ac8:5fc1:: with SMTP id k1mr4921417qta.303.1636825601808; 
	Sat, 13 Nov 2021 09:46:41 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	bm25sm4504037qkb.4.2021.11.13.09.46.40 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 13 Nov 2021 09:46:41 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <b92effa3-e60f-02aa-a7b8-3102adfe2e4a@gmail.com>
	<4c8cbebd-3e7b-6ec3-6159-42ec37c53da6@gmail.com>
Message-ID: <5f7ef5f5-557d-0b10-0ee6-125eb96e9ce5@gmail.com>
Date: Sat, 13 Nov 2021 12:46:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <4c8cbebd-3e7b-6ec3-6159-42ec37c53da6@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmtzIERhdmUsCgpJIHdpbGwgdHJ5IHNpbHBoZWVkLiBJIGFtIG5vdCBnb29kIGluIHRoZSB1
c2Ugb2YgdGVybWluYWwgYXBwbGljYXRpb25zLiAKTGVhcm5pbmcgTGludXggdGFrZXMgdGltZS4g
SSBhbSBzdGlsbCBhIGJlZ2lubmVyLgoKQ2hlZXJzLAoKSWJyYWhpbQoKT24gMTEvMTMvMjEgMTI6
MzggUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gWW91IGNv
dWxkIHRyeSBzeWxwaGVlZC7CoCBJdCdzIGp1c3QgZW1haWwsIGFuZCB1c2FibGUsIHRob3VnaCBu
b3QgYXMgCj4gYWNjZXNzaWJsZSBhcyB0LWJpcmQuwqAgSWYgeW91IHdhbnQgdG8gcnVuIHNvbWV0
aGluZyBpbiB0aGUgdGVybWluYWwgb3IgCj4gY29uc29sZSwgdGhlcmUgYXJlIGFscGluZSBhbmQg
bXV0dCwgdG8gbmFtZSB0d28uIFRoZXNlIGNsaWVudHMgYm90aCAKPiBuZWVkIHNvbWUgdHJpY2t5
IHNldHVwLCBidXQsIG9uY2UgdGhhdCdzIGRvbmUsIHlvdSBzaG91bGRuJ3QgbmVlZCB0byAKPiBt
b2RpZnkgaXQuCj4KPgo+Cj4gSFRILAo+Cj4KPgo+IERhdmXCoCBIdW50wqDCoCBrYTFjZXlAZ21h
aWwuY29tCj4KPgo+Cj4gT24gMTEvMTMvMjEgMTI6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IEkgYW0gd29uZGVyaW5nIGlmIHRoZXJlIGlzIGFub3RoZXIg
YWNjZXNzaWJsZSBlbWFpbCBjbGllbnQgdGhhdCB3b3JrcyAKPj4gc2VhbWxlc3NseSB3aXRoIGxp
bnV4PyBDdXJyZW50bHkgSSBhbSB1c2luZyAKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

