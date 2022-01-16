Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C796148FE82
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 19:47:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642358869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FjksHljiehFZhvGChl4QrviERcfkvB8gmZQnfoHzrSQ=;
	b=Ajj5JCcbMnEY4ytE4fjy6MU2bMEDgwsRJoHpJvUhRo4DkucOHPAu+2dabSIq4Fwpp3mvyZ
	BhzNI/7FLQYqAcxs7vp7VNVkvw1g53GKiFnsjjEFGEYW8j2KZrCh6oOgyUz/udEyBoYmBu
	ycS51zWE8WQmEpyni5Crr1QHnjMVmpY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-471-YupDRBAONROAoTIft8wyOQ-1; Sun, 16 Jan 2022 13:47:46 -0500
X-MC-Unique: YupDRBAONROAoTIft8wyOQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6FD27839A42;
	Sun, 16 Jan 2022 18:47:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A41B7FB95;
	Sun, 16 Jan 2022 18:47:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C9DCE4CA93;
	Sun, 16 Jan 2022 18:47:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GIlXHx007999 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 13:47:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 93BF9C080A9; Sun, 16 Jan 2022 18:47:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F3B6C0809E
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 18:47:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 028811C07CDE
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 18:47:33 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
	[209.85.219.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-410-VObtXzCwMAuDby0cMkHsXA-1; Sun, 16 Jan 2022 13:47:29 -0500
X-MC-Unique: VObtXzCwMAuDby0cMkHsXA-1
Received: by mail-yb1-f180.google.com with SMTP id p5so39447419ybd.13
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 10:47:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=FS7tb6cT39V985XjLlZYqxoqIV0reb91V0Mrr30EEzc=;
	b=fxrZdEZjaHHVYp9Q5dWaUdMouRqahs1TBZoWxo+RfcZVPicgYBRqjKvjigd+Rch2vE
	OSd5UhozoZLt71tifMNNGRNzgsHKucqF6VVieQDNJO9/Eq+tV36Q04BYYa/5FteTGEAd
	NzIME5T0GIMJnsPutbKvcJp3IkxGi1Hl0yG4NqJlREi9XW1M5ALEJI9CEDUYrisntogL
	WzTeY9R4KCk/kD9swdbJY2TroDN6fGU4uekoneKPzY56lp91nUbTyMuex0vrPjUMovWX
	G7LLJs2Hc8NbQ4uLzr0/l2HjJXo803+0p3GP20Z1jDIgzV67QT6Eu2lEREl8Uvp9vSJM
	mydA==
X-Gm-Message-State: AOAM530CZmtXb7ScUyoOlCsc4RbRqkeDx33/1i5eRBsc6l03kfx3KISM
	EZbbLg5F/DlBFHKDqjfropcHO/9Utu3xJqbtnGHzEeKN
X-Google-Smtp-Source: ABdhPJwhpp3q+r5EIYlU0u0My4LQUOsqTBos3eFyw42XJCwaONyfCIhNjX94dMow0aVFKxGL2rY+iH8pHlQ44PW+Jnw=
X-Received: by 2002:a25:bcc9:: with SMTP id l9mr2163557ybm.176.1642358849007; 
	Sun, 16 Jan 2022 10:47:29 -0800 (PST)
MIME-Version: 1.0
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
	<8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
	<e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
	<b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
	<CAM+Q2c5qyi-CERRqxE-YuG+hSojrbVW6Q+8tGC9N3ohzx9b8hA@mail.gmail.com>
In-Reply-To: <CAM+Q2c5qyi-CERRqxE-YuG+hSojrbVW6Q+8tGC9N3ohzx9b8hA@mail.gmail.com>
Date: Sun, 16 Jan 2022 12:47:17 -0600
Message-ID: <CAGJxbF704pY9u69Xpk3qmENGU2=Juj0y_DOZ3SMv1f8goN3qdQ@mail.gmail.com>
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TW1tLCBJIGRvbid0IHRoaW5rIERpZGllciBpcyBibGluZCBhY3R1YWxseS4gSSB0cmllZCBTbGlu
dCBsaWtlIGEgeWVhciBvcgp0d28gYWdvLCBhbmQgZm91bmQgdGhhdCBhZnRlciBpbnN0YWxsaW5n
IFZveGluLCBzcGVlY2ggd2Fzbid0CmludGVycnVwdGVkIHdoZW4gbmV3IHNwZWVjaCByZXBsYWNl
ZCBpdCwgc28gdGhlcmUgd291bGQgYmUgdHdvIEVTcGVhawp2b2ljZXMgc3BlYWtpbmcgYXQgdGhl
IHNhbWUgdGltZSBpZiBJIG5hdmlnYXRlZCBxdWlja2x5LiBUaGlzIG1heSBoYXZlIGJlZW4KZml4
ZWQgYnkgbm93LCBidXQgSSd2ZSBncm93biB0byBsb3ZlIEZlZG9yYSAoaXRzIE1hdGUgc3Bpbiwg
bm90IHRoZSBhd2Z1bApHbm9tZSBjcmFwKSBzbyBJIGRvbid0IHRoaW5rIEknbGwgYmUgdHJ5aW5n
IFNsaW50IGZvciBhIHdoaWxlLgpEZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQoK
CgoKT24gU3VuLCBKYW4gMTYsIDIwMjIgYXQgMTE6MzEgQU0gTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiA8CmJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBIb3dhcmQs
IG15IG5hbWUgaXMgSmFja2llIE1jQnJpZGUuIE5vdGUgSSBzYWlkIHRoZSBTbGludCBkZXZlbG9w
ZXIgaXMKPiBvbiB0aGlzIGxpc3QsICYgaGUganVzdCBwb3BwZWQgaW50byB0aGlzIHRocmVkLiBI
aXMgbmFtZSBpcyBEaWRpZXIuCj4KPiBJIGRvbid0IHJlYWxseSBrbm93IGhpbSwgKCYgdGhhdCdz
IHVuZm9ydHVuYXRlKSwgQnV0IEkndmUgZm91bmQgaGltIHRvCj4gYmUgdmVyeSByZXNwb25zaXZl
IHRvIHRob3NlIHJlcXVlc3RpbmcgaGVscCB3L1NsaW50Lgo+Cj4gSSBteXNlbGYgZG9uJ3QgdXNl
IGl0LCBzaW1wbHkgYmVjYXVzZSBteSB3b3JrIGlzIHcvd2Vic2VydmVycyAmIGZvcgo+IHRoYXQg
SSBleGNsdXNpdmVseSB1c2UgU1NIICYgQ0xJLiBJJ3ZlIGJlZW4gZG9pbmcgdGhhdCBmb3IgMTEg
eWVhcnMKPiBub3csIGJ1dCBpZiBJIHdlcmUgdG8gZXZlciB1c2UgYSBMaW51eCBkZXNrdG9wLCBk
ZXNwaXRlIG15IGV4cGVyaWVuY2UKPiBsZXZlbCwgU2xpbnQgd291bGQgYmUgbXkgZmlyc3QgY2hv
aWNlLCBzaW1wbHkgYmVjYXVzZSBpdCBhcHBlYXJzIHRvIG1lCj4gdG8gYmUgdGhlIG1vc3QgaGFz
c2xlLWZyZWUuCj4KPiBZTU1WLCBvZiBjb3Vyc2UsICYgSSBzdXNwZWN0IG90aGVycyB3b3VsZCBk
aXNhZ3JlZSwgYnV0LCBmcm9tIG15Cj4gZXhwZXJpZW5jZSwgYmVnaW5uZXJzIHdobyBoYXZlIHRv
IHN0cnVnZ2xlIGEgbG90IHcvc29tZXRoaW5nIG9mdGVuCj4ganVzdCBzYXkgInNjcmV3IGl0IiAm
IGdpdmUgdXAuIEl0J3MgZXNwZWNpYWxseSBldmVuIG1vcmUgdHJ1ZSB3aGVuCj4gbGFjayBvZiBh
Y2Nlc3NpYmlsaXR5IGJlY29tZXMgYSBmYWN0b3IuIEkgdGhpbmsgdGhhdCdzIGEgd2hvbGUgbG90
Cj4gbGVzcyBsaWtlbHkgdG8gaGFwcGVuIHcvYSBibGluZCB1c2VyICYgU2xpbnQsIHNpbXBseSBi
ZWNhdXNlIHRoZQo+IGRldmVsb3BlciBpcyBhbHNvIGJsaW5kLCBzbyBoZSBrbm93cyB3aGF0J3Mg
cmVxdWlyZWQgJiBoZSByZWFsbHkKPiBhcHBlYXJzIHRvIGNhcmUgYSBncmVhdCBkZWFsLgo+Cj4g
T24gMS8xNi8yMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4KPiB3cm90ZToKPiA+IEhpLAo+ID4KPiA+IG15IGZyaWVuZCBLeWxlLCBJ
IGJldCB0aGF0IGp1c3QgdHJ5aW5nIFNsaW50IChub3QgU2xhY2t3YXJlKSBjYW4gY2hhbmdlCj4g
eW91cgo+ID4gb3BpbmlvbiBhYm91dCBpdCA8c21pbGU+Lgo+ID4KPiA+IEl0IHlvdSBzdWNjZWVk
IGJyZWFraW5nIGl0LCBwbGVhc2UgbGV0IG1lIGtub3cgaG93LCBzbyBJIGtub3cgd2hhdCBJCj4g
c2hvdWxkCj4gPiBlbmhhbmNlIGFuZC9vZiBmaXghCj4gPgo+ID4gQ2hlZXJzLAo+ID4gRGlkaWVy
Cj4gPiAtLQo+ID4gRGlkaWVyIFNwYWllcgo+ID4gU2xpbnQgbWFpbnRhaW5lcgo+ID4KPiA+Cj4g
PiBMZSAxNi8wMS8yMDIyIMOgIDE3OjQyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0IDoKPiA+PiBTbGludCBpcyBlc3NlbnRpYWxseSBTbGFja3dhcmUgd2l0aCBh
IGZldyBtb2RpZmljYXRpb25zLiBJIGJyb2tlCj4gU2xhY2t3YXJlCj4gPj4gc2V2ZXJhbCB0aW1l
cywgd2hpY2ggaXMgYWN0dWFsbHkgd2h5IEkgbGVmdCBpdCBlYXJseSBvbi4gSXQgd2FzIG15IGZp
cnN0Cj4gPj4gZXhwZXJpZW5jZSB3aXRoIExpbnV4LCBidXQgSSB3b3VsZG4ndCBzYXkgaXQgd2Fz
IG15IG1vc3QgZW5qb3lhYmxlCj4gPj4gZXhwZXJpZW5jZS4gSQo+ID4+IGV2ZW50dWFsbHkgYnJv
a2UgdGhpbmdzIG9uIHB1cnBvc2UgaW4gb3RoZXIgZGlzdHJpYnV0aW9ucyBpbiBvcmRlciB0bwo+
ID4+IGxlYXJuIGhvdwo+ID4+IHRvIGZpeCB0aGVtLCBhbmQgSSBndWVzcyBJIGNhbiB0aGFuayBT
bGFja3dhcmUgZm9yIHRoYXQgTE9MLiBJIGFjdHVhbGx5Cj4gPj4gZm91bmQKPiA+PiBSZWQgSGF0
LCB3aGljaCBiZWNhbWUgRmVkb3JhLCB0byBiZSBvbmUgb2YgdGhlIGVhc2llc3QgdG8gdXNlIG91
dCBvZiB0aGUKPiA+PiBib3gsCj4gPj4gYW5kIGl0IGlzIGtlcHQgdXBkYXRlZCBiZXR0ZXIgdGhh
biBVYnVudHUsIHdoaWNoIGlzIGFyZ3VhYmx5IG9uZSBvZiB0aGUKPiA+PiBlYXNpZXN0Cj4gPj4g
b2YgYWxsIHRvIHVzZSBvdmVyYWxsLiBBY3R1YWxseSwgQXJjaCBpcyBncmVhdCBvbmNlIHlvdSBn
ZXQgaXQgZ29pbmcsCj4gYnV0Cj4gPj4gdGhlcmUKPiA+PiBpcyBhIGxvdCB0aGF0IGNhbiBicmVh
ayB3aGlsZSB5b3UncmUgaW5zdGFsbGluZywgc28gSSBkb24ndCByZWNvbW1lbmQgaXQKPiA+PiBm
b3IKPiA+PiBwZW9wbGUgd2hvIGp1c3Qgd2FudCB0byBzZWUgd2hhdCB0aGluZ3MgbG9vayBsaWtl
LiBNeSBwZXJzb25hbAo+ID4+IHJlY29tbWVuZGF0aW9ucwo+ID4+IGZvciBzZWVpbmcgd2hhdCB0
aGluZ3MgbG9vayBsaWtlIGFuZCBob3cgd2VsbCB0aGV5IHdvcmsgcmlnaHQgb3V0IG9mIHRoZQo+
ID4+IGJveAo+ID4+IHdvdWxkIGJlIGVpdGhlciBGZWRvcmEgTGl2ZSBXb3Jrc3RhdGlvbgo+ID4+
Cj4gPj4KPiBodHRwczovL2RsLmZlZG9yYXByb2plY3Qub3JnL3B1Yi9mZWRvcmEvbGludXgvcmVs
ZWFzZXMvMzUvV29ya3N0YXRpb24veDg2XzY0L2lzby9GZWRvcmEtV29ya3N0YXRpb24tTGl2ZS14
ODZfNjQtMzUtMS4yLmlzbwo+ID4+Cj4gPj4KPiA+PiBvciB0aGUgdmVyc2lvbiBJIHBlcnNvbmFs
bHkgdXNlOiBGZWRvcmEgTWF0ZSBDb21waXoKPiA+Pgo+ID4+Cj4gaHR0cHM6Ly9kbC5mZWRvcmFw
cm9qZWN0Lm9yZy9wdWIvZmVkb3JhL2xpbnV4L3JlbGVhc2VzLzM1L1NwaW5zL3g4Nl82NC9pc28v
RmVkb3JhLU1BVEVfQ29tcGl6LUxpdmUteDg2XzY0LTM1LTEuMi5pc28KPiA+Pgo+ID4+Cj4gPj4g
Qm90aCBvZiB0aGVzZSBpbmNsdWRlIHRoZSBPcmNhIHNjcmVlbiByZWFkZXIgb24gdGhlIGlzbyBp
dHNlbGYuCj4gPj4gV29ya3N0YXRpb24KPiA+PiBhbGxvd3MgeW91IHRvIHByZXNzIGFsdCtzdXBl
citzIHRvIHN0YXJ0IE9yY2Egb24gdGhlIGRlc2t0b3AsIGFuZAo+ID4+IE1BVEUtQ29tcGl6Cj4g
Pj4gc3RhcnRzIGl0IGJ5IHByZXNzaW5nIGFsdCtmMiBhbmQgZW50ZXJpbmcKPiA+Pgo+ID4+IG9y
Y2EKPiA+Pgo+ID4+IGluIHRoZSBydW4gd2luZG93IHRoYXQgcG9wcyB1cC4gRWl0aGVyIHdheSwg
dGhlIGluc3RhbGxlciBpcyBmYWlybHkgZWFzeQo+ID4+IHRvIHVzZSwKPiA+PiBhbmQgSSBoYXZl
IHN1Y2Nlc3NmdWxseSBpbnN0YWxsZWQgYm90aCB0byBhIGhhcmQgZHJpdmUgYW5kIHRvIGEgVVNC
Cj4gdGh1bWIKPiA+PiBkcml2ZQo+ID4+IHdpdGhvdXQgYnJlYWtpbmcgYW55dGhpbmcuIFlvdSBj
YW4gb2YgY291cnNlICJ0cnkgYmVmb3JlIHlvdSBidXksIiBqdXN0Cj4gPj4gbGlrZSB5b3UKPiA+
PiBjYW4gd2l0aCBVYnVudHUsIG1lYW5pbmcgdGhhdCB5b3UgaGF2ZSBmdWxsIGFjY2VzcyB0byB0
aGUgc3lzdGVtIHdpdGhvdXQKPiA+PiBpbnN0YWxsaW5nIHRvIGFueXRoaW5nIGF0IGFsbCwgYW5k
IHRoZW4gaWYgeW91IGRlY2lkZSB5b3UgZG8gd2FudCB0bwo+ID4+IGluc3RhbGwsCj4gPj4geW91
IGp1c3Qgc3RhcnQgdGhlIGluc3RhbGxlciBhbmQgc2V0IGl0IHVwIGFjY29yZGluZyB0byB5b3Vy
IG5lZWRzLgo+ID4+Cj4gPj4KPiA+PiBUaGF0IHNhaWQsIEZlZG9yYSBhbmQgVWJ1bnR1IGJvdGgg
aGF2ZSB2ZXJ5IGxhcmdlIGFuZCBoZWxwZnVsIHVzZXIKPiBiYXNlcywKPiA+PiBhbmQKPiA+PiBj
b21tdW5pdHkgc3VwcG9ydCBpcyBmYXIgZWFzaWVyIHRvIGdldCB3aGVuIHlvdSBuZWVkIGhlbHAu
IFVidW50dQo+IHByb2JhYmx5Cj4gPj4gaGFzCj4gPj4gdGhlIGxhcmdlc3QgdXNlciBiYXNlIG9m
IGFsbCwgYW5kIHRoaXMgaXMgYSBnb29kIHRoaW5nIGZvciB0aG9zZSBwZW9wbGUKPiA+PiB3aG8g
YXJlCj4gPj4gZ2V0dGluZyBzdGFydGVkLiBJIGNhbm5vdCBvdmVyZXN0aW1hdGUgdGhlIGJlbmVm
aXQgb2YgYnJvYWQgYW5kIGRpdmVyc2UKPiA+PiBjb21tdW5pdHkgc3VwcG9ydCwgYW5kIGJvdGgg
RmVkb3JhIGFuZCBVYnVudHUgb2ZmZXIgc3VjaCBzdXBwb3J0IG93aW5nCj4gdG8KPiA+PiB0aGVp
cgo+ID4+IGxhcmdlIG51bWJlcnMgb2YgdXNlcnMgYW5kIHRoZWlyIHdpbGxpbmduZXNzIHRvIGhl
bHAgZWFjaCBvdGhlci4gU28KPiBiYXNlZAo+ID4+IG9uCj4gPj4gdGhpcyBhbG9uZSwgSSB3b3Vs
ZCByZWNvbW1lbmQgZWl0aGVyIEZlZG9yYSBvciBVYnVudHUgb3ZlciBqdXN0IGFib3V0Cj4gPj4g
YW55dGhpbmcKPiA+PiBlbHNlLCBhbmQgRmVkb3JhIGlzIG15IHBlcnNvbmFsIGNob2ljZSBkdWUg
dG8gaXRzIGZyZXF1ZW50IHNvZnR3YXJlCj4gPj4gdXBkYXRlcyBldmVuCj4gPj4gaW4gYSByZWxl
YXNlLgo+ID4+Cj4gPj4gfkt5bGUKPiA+Pgo+ID4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxzc3QgbWFpbGluZyBsaXN0Cj4gPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4KPiA+Cj4gPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4gPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgo+IC0tCj4gU3Vic2NyaWJl
IHRvIGEgV29yZFByZXNzIGZvciBOZXdiaWVzIE1haWxpbmcgTGlzdCBieSBzZW5kaW5nIGEgbWVz
c2FnZSB0bzoKPiB3cDRuZXdicy1yZXF1ZXN0QGZyZWVsaXN0cy5vcmcgd2l0aCAnc3Vic2NyaWJl
JyBpbiB0aGUgU3ViamVjdCBmaWVsZCBPUiBieQo+IHZpc2l0aW5nIHRoZSBsaXN0IHBhZ2UgYXQg
aHR0cDovL3d3dy5mcmVlbGlzdHMub3JnL2xpc3Qvd3A0bmV3YnMKPiAmIGNoZWNrIG91dCBteSBz
aXRlcyBhdCB3d3cuYnJpZ2h0c3RhcnN3ZWIuY29tICYgd3d3Lm15c2l0ZXNiZWVuaGFja2VkLmNv
bQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+
IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

