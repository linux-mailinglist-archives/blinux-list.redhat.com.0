Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 072DC202B72
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jun 2020 17:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592754227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HRDpwIGuLwsDYZ6LwuqLo0fXsMZNhLtsnFs2F6nNpJ0=;
	b=YgvgklXS9yo1vA0FL7B1T9vF08ywoV+Q3Lqi+mS4BeF0d6mmLP2I6rMfZeZNJa66bNW2KF
	8kcfMB0CGbQsxvJymTww2gD/A6Cwk606aBaWyt9SJgRqsr41yvqh8EWFSKiT5BbjOqv0lA
	SuviSJJWaAKlH7SSRjdAVP/CXCu2mCc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-221-HuynINgEPwi2XwMYFwrzAQ-1; Sun, 21 Jun 2020 11:43:45 -0400
X-MC-Unique: HuynINgEPwi2XwMYFwrzAQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51B86107ACCA;
	Sun, 21 Jun 2020 15:43:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC32760BF1;
	Sun, 21 Jun 2020 15:43:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F0D9833C3;
	Sun, 21 Jun 2020 15:43:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05LFhZ1o013567 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jun 2020 11:43:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 317AD110F0BF; Sun, 21 Jun 2020 15:43:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CC7F110F0BE
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 15:43:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7236C101A525
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 15:43:32 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-179-Bz97Wh1mMJ-GMwcKSibRcA-1; Sun, 21 Jun 2020 11:43:29 -0400
X-MC-Unique: Bz97Wh1mMJ-GMwcKSibRcA-1
Received: by mail-qk1-f172.google.com with SMTP id l188so416416qkf.10
	for <blinux-list@redhat.com>; Sun, 21 Jun 2020 08:43:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=kZHuuHC2OMyVFU1mF4FFBQpmhtHLw687oTpJxIOFcgc=;
	b=h5q/SaYZe2N6MAW1lv62ksj1oJ6uWBIANBy2zC6CrMXLo69T1Um5shLuIOU6BmAfSw
	32TyGvL4oO82Lznf/3NsIYXTVzeFaCRz6bsXQIXij+LSVWOR9wHlPIzzSNY7kbUX0YLY
	kI8MHN43mQTwEgZ91uGQFx9DyeaSQyVgUOX9dvoT6vQ73c2oCrIdLBQIjhfhjNGTGAN/
	ppsAOrt5DhzKPt8ZSrnAqPONLxh2ISfIvzaaIuTOpTmxPswK4cqlCy8Sb62t2ngKOsTQ
	sV2w4LyZMBhguWrk+CfFoQ9rPrFO9Utf6JWqZxvukijYR2trYLsl2puH7YCa8k5JAj5g
	FKyg==
X-Gm-Message-State: AOAM532xzwTRWG/PXYgARC8z7a7SQ4yj6UXiaRwj2fRfwCB8qEe4n0kA
	iTjE0/W1RyGWELZP21sclfITs7dzBt8=
X-Google-Smtp-Source: ABdhPJzZ7x961WP0KdqFS2NosBJiWxyZbe8cv7c12/r3cCXbfQbqfq0CwWMS2fdEWvQDHeEdOGE3VA==
X-Received: by 2002:a37:6f07:: with SMTP id k7mr175064qkc.43.1592754208053;
	Sun, 21 Jun 2020 08:43:28 -0700 (PDT)
Received: from [192.168.1.8] (024-197-047-106.biz.spectrum.com.
	[24.197.47.106]) by smtp.gmail.com with ESMTPSA id
	s42sm13101430qtk.14.2020.06.21.08.43.27 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 21 Jun 2020 08:43:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 21 Jun 2020 10:43:26 -0500
References: <DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
	<alpine.DEB.2.22.394.2006141355001.3348482@chime>
	<eb770c6c-c8e6-84d6-973c-e3afc118ca1b@slint.fr>
	<20200615100242.GC2180@rednote.net>
	<CABKqQvG5Nv14kAK-uipF1d4-mXqkea9Uk_0E8e+qbNGLN3XV=g@mail.gmail.com>
	<20200616065933.GF2180@rednote.net>
	<843663A4-EEEA-4DB7-A1CB-56C6A65E41BC@cfcl.com>
	<20200621074757.GA2690@rednote.net>
	<9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <9A1F6B85-D0FF-4CC3-9DB1-8585F92EB74E@cfcl.com>
Message-Id: <F216610A-50CE-4BE6-A7B5-C1C5DA236210@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T2theSwgbXkgdHdvLWNlbnRzLgoKRm9yIG1lLCBhY2Nlc3NpYmlsaXR5IGlzIGFsbCBhYm91dCB0
aGUgb3BlcmF0aW5nIHN5c3RlbS4gU29tZSBwZW9wbGUgbG92ZSBBbmRyb2lkLCBhbmQgSSBkb27i
gJl0IHVuZGVyc3RhbmQgd2h5LiBJdHMgYWNjZXNzaWJpbGl0eSBmcmFtZXdvcmtzIGhvbGQgZXZl
cnl0aGluZyBiYWNrLiBMaWtlLCBpZiB0aGUgYWNjZXNzaWJpbGl0eSBmcmFtZXdvcmtzIGRvbuKA
mXQgc3VwcG9ydCBzb21ldGhpbmcsIHRoZW4gZ2V0dGluZyBpdCBzdXBwb3J0ZWQgd2lsbCBiZSBt
dWNoIGhhcmRlci4gVGhlIG9wZXJhdGluZyBzeXN0ZW0gaXMgbGl0ZXJhbGx5IHRoZSBjb3JlIG9m
IGFjY2Vzc2liaWxpdHkuIFN1cmUsIHNvbWV0aGluZyBsaWtlIEVtYWNzcGVhayBtaWdodCBzaXQg
b24gdG9wIG9mIExpbnV4LCBidXQgdGhhdCBkb2VzbuKAmXQgbWFrZSBMaW51eCBhbnkgbW9yZSBh
Y2Nlc3NpYmxlLCBpdCBqdXN0IG1lYW5zIHRoYXQgRW1hY3NwZWFrIGhhcyB0byBkbyB0aGUgam9i
IG9mIGEgc2NyZWVuIHJlYWRlciBhbmQgYWxsIHRoYXQuIEFuZCB0aGF04oCZcyBhIHNoYW1lLiBO
b25lIG9mIHRoZSBjdXJyZW50IG9mZmVyaW5ncyBjb3VsZCBwb3NzaWJseSBkbyB0aGUgam9iIHRo
YXQgRW1hY3NwZWFrIGRvZXMsIGV4Y2VwdCBOYXJyYXRvciBvbiBXaW5kb3dzIDEwLgoKQW5kIEni
gJlkIG11Y2ggcmF0aGVyIGhhdmUgdGhlIGFjdHVhbCBvcGVubmVzcyBvZiBMaW51eCwgZXZlbiB3
aXRoIGl0cyBwb29ybHkgb3B0aW1pemVkIGFjY2Vzc2liaWxpdHkgc3RhY2ssIHRoYW4gc2hyaXZl
bGVkIEFuZHJvaWQgd2hpY2gsIHVudGlsLCBzdXBwb3NlZGx5LCB2ZXJzaW9uIDExLCBvbmUgY291
bGQgbm90IHVzZSBtdWx0aXBsZSBmaW5nZXIgZ2VzdHVyZXMgd2l0aCBUYWxrYmFjay4gVGhpcyBp
cyBhIGJpZyBkZWFsLCBhbmQgSSBkb27igJl0IGtub3cgdGhhdCBwZW9wbGUgbG9va2luZyBmb3Ig
YSBzbWFsbCBzb2x1dGlvbiBjb21wbGV0ZWx5IHJlYWxpemUgaG93IGZhciBiZWhpbmQgQW5kcm9p
ZCBpcy4gSSBkb27igJl0IGNhcmUgaWYgb25lIGNhbiBnZXQgdGhpbmdzIGRvbmUgb24gQW5kcm9p
ZCwgSSBjYXJlIHdoYXQgaXQncyBsaWtlIHRvIGdldCB0aGluZ3MgZG9uZS4KCllvdSBrbm93LCB0
aGVyZSBoYXZlIGJlZW4gc29tZSBHb29nbGUgZW1wbG95ZWVzIHdobyBJ4oCZdmUgdGFsa2VkIHRv
IHdobyBoYXZlIGZvdW5kIGRvaW5nIHRoaW5ncyBsaWtlIHRyeWluZyB0byBjb25uZWN0IG9uZSB0
eXBlIG9mIGNvbXB1dGVyIHRvIGFub3RoZXIgdGhyb3VnaCBHb29nbGUgUmVtb3RlIGFzIOKAnGZ1
buKAnS4gT3RoZXJzIGhhdmUgc2FpZCB0aGF0IHVzaW5nIHRoZSBjbHVua3kgYWN0aW9ucyBtZW51
IHRvIGRlbGV0ZSBlbWFpbCBpbiB0aGUgaWxsLWZhdGVkIEluYm94IGFwcCBpcyDigJxmdW7igJ0u
IEkgdGhpbmsgdGhleSBhY3R1YWxseSBtZWFuIGZydXN0cmF0aW5nLCBhbmQganVzdCBhcmVu4oCZ
dCBhbGxvd2VkIHRvIHNheSBpdCBhYm91dCB0aGVpciBvd24gcHJvZHVjdHMsIGJlY2F1c2UgdGhh
dOKAmXMgd2hhdCB1c2luZyBBbmRyb2lkIHdhcyBsaWtlIGZvciBtZSwgYSBxdWl0ZSB0ZWNobmlj
YWwgcGVyc29uLiBJIG1lYW4sIEnigJl2ZSBub3QgdGFrZW4gYSBjb21wdXRlciBhcGFydCBiZWZv
cmUgYW5kIHB1dCBvbmUgdG9nZXRoZXI7IEnigJltIHRvbyBhZnJhaWQgb2YgYnJlYWtpbmcgdGhp
bmdzLCBlc3BlY2lhbGx5IHRoZSBSYXNwYmVycnkgUGkuIEJ1dCBJIGhhdmUgdXNlZCBhbGwgbWFq
b3Igb3BlcmF0aW5nIHN5c3RlbXMsIGFuZCBnb3NoIGRhcm4gaXQgSSBqdXN0IHdhbnQgdG8gZ2V0
IHdvcmsgZG9uZSEgSSBkb27igJl0IGhhdmUgdGltZSB0byBmaWRkbGUgYXJvdW5kIHdpdGggc2Ny
ZWVuIHJlYWRlciB3b3JrYXJvdW5kcyB0byBhIHBvb3IgYWNjZXNzaWJpbGl0eSBzdGFjay4gSSBk
b27igJl0IGhhdmUgdGltZSB0byBzZXQgdmFyaWFibGVzICBqdXN0IHRvIHR1cm4gb24gYWNjZXNz
aWJpbGl0eSBpbiBhIGRlc2t0b3AgZW52aXJvbm1lbnQuIEJ1dCBJIHdvdWxkIG11Y2ggcHJlZmVy
IHRoZSBvcGVuIHNvdXJjZSBuYXR1cmUgb2YgTGludXgsIHdoZXJlIHRoZSBzY3JlZW4gcmVhZGVy
IGlzIHVwZGF0ZWQgYnkgZmVlZGJhY2sgZnJvbSB1c2VycywgdGhhbiBHb29nbGXigJlzIOKAnHdl
bGwgSSBtZWFuLCBJIHRoaW5rIHRoaXMgc2NyZWVuIHJlYWRlciBmZWF0dXJlIGlzIGdvb2QgaGFo
YSwgeeKAmWFsbCB1c2VycyBzdG9wIGNvbXBsYWluaW5nLCBpdHMgbm90IHRoYXQgYmFkLuKAnSBT
b3J0IG9mIEktS25vdy1XaGF04oCZcy1CZXN0IHZpZXcgb2YgR29vZ2xl4oCZcyBUYWxrYmFjayBk
ZXZlbG9wZXJzLiBTbywgd291bGQgeW91IHdhbnQgdG8gbWFrZSwgb3IgdXNlLCBhIHdob2xlIGRp
ZmZlcmVudCBzY3JlZW4gcmVhZGVyIGluIHlvdXIgdmVyc2lvbiBvZiBBbmRyb2lkPyBCZWNhdXNl
IEdvb2dsZSBtYWtlcyBUYWxrYmFjay4gSXTigJlzIG5vdCBvcGVuIHNvdXJjZSwgb3IgYXQgbGVh
c3QsIG5vdCB0aGUgbGF0ZXN0IHZlcnNpb24uIEkgYmVsaWV2ZSB0aGUgb3BlbiBzb3VyY2UgdmVy
c2lvbiBpcyBhY3R1YWxseSBxdWl0ZSBhIGZldyB2ZXJzaW9ucyBvdXQgb2YgZGF0ZS4gU28gcGxl
YXNlLCBsZXTigJlzIHN0aWNrIHdpdGggTGludXgsIHdoZXJlIHdlIGhhdmUgY29udHJvbC4KCgpE
ZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQoKSHR0cHM6Ly9kZXZpbnByYXRlci5n
aXRodWIuaW8KCj4gT24gSnVuIDIxLCAyMDIwLCBhdCA5OjQ3IEFNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPj4g
T24gSnVuIDIxLCAyMDIwLCBhdCAwMDo0NywgKEphbmluYSkgd3JvdGU6Cj4+IAo+PiAuLi4gSSB3
b25kZXIgaWYgYXNraW5nIGFuIEFuZHJvaWQgcGhvbmUgdG8gc2VydmUgdGhpcyBmdW5jdGlvbiBp
cwo+PiBtb3JlIGFuIGFjYWRlbWljIGV4ZXJjaXNlIHRoYW4gYSBwcmFjdGljYWwgb25lIGF0IHRo
aXMgcG9pbnQ/Cj4+IAo+PiBJIHNheSB0aGlzIGJlY2F1c2UgSSdtIGp1c3Qgbm93IGluIHRoZSBw
cm9jZXNzIG9mIGJ1eWluZyBteSBuZXh0Cj4+IChuYXRpdmVseSkgTGludXggY29tcHV0ZXIsIGFu
ZCBpdCdzIHF1aXRlIHNtYWxsLiBJdCBjb21lcyBwcmV0dHkgY2xvc2UKPj4gdG8gdGhlIHNpemUg
b2YgYW4gQW5kcm9pZCBwaG9uZS4gU28sIEkgc3VzcGVjdCBpdCBtaWdodCBiZSB0aGUgZWFzaWVy
Cj4+IHBhdGggb2YgcHJhY3RpY2FsaXR5IGlzIHRoZSBwb2ludC4gLi4uCj4gCj4gVGhlcmUgYXJl
IGEgbnVtYmVyIG9mIHNtYWxsIHN5c3RlbXMgc2hvd2luZyB1cCBvbiB0aGUgbWFya2V0IHRoZXNl
IGRheXMuCj4gSSB0aGluayB0aGlzIGlzIGdyZWF0LCBidXQgaXQgZG9lc24ndCByZWFsbHkgYWRk
cmVzcyB0aGUgdXNlIGNhc2UgSSBoYXZlCj4gaW4gbWluZCAoYSBwb2NrZXQtc2l6ZWQgY29tcHV0
ZXIgd2l0aCBpbnN0YW50LW9uIGNhcGFiaWxpdHkpLiAgVGhlIGlzc3Vlcwo+IGluY2x1ZGUgaW50
ZWdyYXRpb24sIGNvc3QsIHNpemUsIHdlaWdodCwgYW5kIGluc3RhbnQtb24gY2FwYWNpdHkuCj4g
Cj4gVGhlIEludGVsLWJhc2VkIHN5c3RlbXMgdGVuZCB0byBiZSBwcmljaWVyIHRoYW4gdGhlIFJh
c1BpIG9uZXMsIGJ1dCBhbGwKPiBvZiB0aGVtIGNvc3QgYXQgbGVhc3QgYSBmZXcgaHVuZHJlZCBk
b2xsYXJzLiAgQWRkaW5nIGFuIGludGVybmFsIFVQUyBpcwo+IGdvaW5nIHRvIHJhaXNlIHRoYXQg
YnkgYXQgbGVhc3QgYW5vdGhlciBodW5kcmVkIGRvbGxhcnMuICBBbHNvLCBzb21lb25lCj4gd2ls
bCBoYXZlIHRvIGVuZ2luZWVyIGFuZCBmYWJyaWNhdGUgdGhlIGFkZC1vbiBVUFMgYm9hcmQsIGJh
dHRlcnksIGV0Yy4KPiAKPiBBIHJldGlyZWQgQW5kcm9pZCBjZWxsIHBob25lLCBpbiBjb250cmFz
dCwgd2lsbCBhbHJlYWR5IGhhdmUgYSBidWlsdC1pbgo+IFVQUyBhbmQgY2FuIGJlIGZvdW5kIGZv
ciB3ZWxsIHVuZGVyICQxMDAuICBGb3IgYSBwb29yIChlLmcuLCB0aGlyZC13b3JsZCkKPiBibGlu
ZCB1c2VyLCB0aGVzZSBtYXkgYmUgY3JpdGljYWwgaXNzdWVzLgo+IAo+IFNpemUgYW5kIHdlaWdo
dCBhcmUgYWxzbyBpbXBvcnRhbnQuICBUaGUgbWluaSBQQyBzeXN0ZW1zIGZpdCBuaWNlbHkgb24g
YQo+IGRlc2t0b3AsIGJ1dCBub25lIG9mIHRoZW0gd2lsbCBmaXQgaW50byBhIG5vcm1hbCBwb2Nr
ZXQuICBDYXJyeWluZyBvbmUKPiBhcm91bmQgd291bGQgdGh1cyByZXF1aXJlIHNvbWV0aGluZyBs
aWtlIGEgYmFja3BhY2suICBTb21lIHVzZXJzIHdvdWxkIGJlCj4gT0sgd2l0aCB0aGlzLCBidXQg
SSB0aGluayBtb3N0IHdvdWxkIG5vdC4KPiAKPiBTbywgdGhpcyBpcyBhIHNlcmlvdXMgcHJhY3Rp
Y2FsIHF1ZXN0aW9uLCByYXRoZXIgdGhhbiBhbiBhY2FkZW1pYyBleGVyY2lzZS4KPiBJZiB3ZSBj
b3VsZCBmaW5kIGEgd2F5IHRvIHB1dCB1c2FibGUgcG9ydGFibGUgY29tcHV0ZXJzIGludG8gdGhl
IGhhbmRzIG9mCj4gYmxpbmQgdXNlcnMgYXJvdW5kIHRoZSB3b3JsZCwgdGhhdCB3b3VsZCBiZSBh
IG1ham9yIGNvbnRyaWJ1dGlvbi4gIEFsc28sIEkKPiB0aGluayB0aGUgZWZmb3J0IG1pZ2h0IGxl
YWQgdG8gdXNlZnVsIGVuaGFuY2VtZW50cyBpbiBhdCBsZWFzdCBzb21lIG9mIHRoZQo+IG1haW5z
dHJlYW0gQW5kcm9pZCBkaXN0cmlidXRpb25zLgo+IAo+IC0gUmljaCBNb3Jpbgo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0

