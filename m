Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id A4591ED4F3
	for <lists+blinux-list@lfdr.de>; Sun,  3 Nov 2019 21:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1572813982;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MXkpYU8JRFvtyb1Ref3yFaktEWrSurB+ISmvY2UmsLw=;
	b=KdKFKGw1/5mYq64u7A/xtUsErG2iAdIMd3HQceLt7x7fKz+AU7MZ4+fbdqGhwXpyB1BY2Z
	BuI3R7oFuEpgomB55Z1ID1AvGkJfua665BToU4h32uuIuQcDUfLcByoLudjimBCg8WHPq0
	jIGU3J9MSFilvmoGB2sptUiRDwUlhPM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-eiTnoyqyN_WLiVDWZsGW9w-1; Sun, 03 Nov 2019 15:46:20 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98BCC107ACC2;
	Sun,  3 Nov 2019 20:46:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 129405D9E2;
	Sun,  3 Nov 2019 20:46:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C9DB4BB78;
	Sun,  3 Nov 2019 20:46:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xA3Kk2kk027598 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 3 Nov 2019 15:46:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7DB645D9E5; Sun,  3 Nov 2019 20:46:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx23.extmail.prod.ext.phx2.redhat.com
	[10.5.110.64])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7827A5D9E2
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 20:46:00 +0000 (UTC)
Received: from smtp4-g21.free.fr (smtp4-g21.free.fr [212.27.42.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 392BF10C72C8
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 20:45:58 +0000 (UTC)
Received: from slint.slint.fr (unknown
	[IPv6:2a01:e34:ed09:d470:f98e:ae61:edb5:45b1])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 1909F19F5A5
	for <blinux-list@redhat.com>; Sun,  3 Nov 2019 21:45:57 +0100 (CET)
Subject: Re: Ubuntu, UEFI and hard disks
To: blinux-list@redhat.com
References: <9fcc4efe-6f6b-0629-9d3b-5d178f690969@gmail.com>
	<07efbaf7bb6160fb186d50a201106a80@ijn2.net>
	<aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
Message-ID: <c833c083-1eae-0067-8f0e-a52cf79c6f40@slint.fr>
Date: Sun, 3 Nov 2019 21:45:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <aeecd4b9-4f4b-01b8-5066-65a52900052e@GMAIL.COM>
Content-Language: fr
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 238
	matched, not delayed by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.64]); Sun, 03 Nov 2019 20:45:58 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.64]);
	Sun, 03 Nov 2019 20:45:58 +0000 (UTC) for IP:'212.27.42.4'
	DOMAIN:'smtp4-g21.free.fr' HELO:'smtp4-g21.free.fr'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: 0.001  (RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_NONE) 212.27.42.4 smtp4-g21.free.fr 212.27.42.4 smtp4-g21.free.fr
	<didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.64
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: eiTnoyqyN_WLiVDWZsGW9w-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

SWYgcG9zc2libGUsIHBsZWFzZSBwcm92aWRlIHRoZSBvdXRwdXQgb2YgdGhpcyBjb21tYW5kLCB0
eXBlZCBmcm9tIHRoZSBVYnVudHUgaW5zdGFsbGVyOgoKbHNibGsgLWwgLW8gbmFtZSBzaXplLGZz
dHlwZQoKRGlkaWVyCgpMZSAwMy8xMS8yMDE5IMOgIDIwOjQ1LCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSSBkbyBoYXZlIFdpbmRvd3MgaW5zdGFsbGVk
LCB5ZXMuIEknbSB1c2luZyBVYnVudHUgMTguMDQuMyBNYXRlLCBtb3N0bHkgc2luY2UgSSd2ZSBo
YWQgemVybyBpc3N1ZXMgaW5zdGFsbGluZyBpdCBvbiBvdGhlciBzeXN0ZW1zIGV2ZW4gd2l0aCBT
U0RzIGluIChteSBkZXNrdG9wIGhhcyBTU0RzIGluIGl0IGZvciBleGFtcGxlKS4gRXZlcnl0aGlu
ZyBJJ3ZlIHJlYWQgYW5kIGJlZW4gdG9sZCBieSBDYW5vbmljYWwgaXMgdG8ga2VlcCBVRUZJIG9u
IGJ1dCByZW1vdmUgc2VjdXJlIGJvb3QgdG8gYXZvaWQgcHJvYmxlbXMsIHNvIHRoYXQncyB3aGF0
IEkgZGlkLiBJIHdlbnQgdGhyb3VnaCBhbmQgbWFkZSB0aGUgYm9vdGFibGUgVVNCIHdpdGggUnVm
dXMgaW4gV2luZG93cywgYW5kIHllcyBpdCBib290cy4gQnV0Li4uCj4gCj4gSGF2aW5nIGNoZWNr
ZWQgaXQsIGl0J3MgYSBTU0QsIDI1NkdCICh3aGljaCBpcyBmaW5lIGZvciBteSBsYXB0b3ApLCBz
by4uLi5pcyB0aGVyZSBhbnl0aGluZyBpbiBwYXJ0aWN1bGFyIEkgbmVlZCB0byBnZXR0IFVidW50
dSBNYXRlIDE4LjA0LjMgYW5kIHRoZSBVYmlxdWl0eSBpbnN0YWxsZXIgdG8gZGV0ZWN0IHRoZSBT
U0QgYW5kIE5WTUUgY29ubmVjdGlvbnM/Cj4gCj4gT24gMDMvMTEvMjAxOSAxODo0NCwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4gSGVsbG8sIEJpcmRpZSBoZXJl
IQo+Pgo+Pj4gSSBwb3N0ZWQgdGhpcyBvdmVyIGF0IGFza3VidW50dSBidXQgSSBmaWd1cmVkIEkn
ZCBhc2sgaGVyZSB0b28uIEdvdCBteQo+Pj4gbGFwdG9wIHRvIGJvb3QgaW50byBVYnVudHUgTWF0
ZS4gUHJvYmxlbSBpcy4uLml0IHdvbid0IGRldGVjdCB0aGUgaGFyZAo+Pj4gZHJpdmUgYXQgYWxs
LiBJIGNhbiBkbyBzbGJsayBhbmQgYWxsIGl0IHNob3dzIGlzIGRldi9zZGEgKHdoaWNoIGlzIHRo
ZQo+Pj4gVVNCIHN0aWNrKS4gSW5zdGFsbGVyIHBpY2tzIHVwIHRoZSBzdGljayB0b28gYW5kIHRl
bGwgbWUgSSBuZWVkIDhHQiBvZgo+Pj4gc3BhY2Ugb24gdGhlIDhHQiBtZW1vcnkgc3RpY2suCj4+
Cj4+IE1vc3QgbGlrZWx5IHlvdXIgcHJvYmxlbSBpcyB0aGF0IHRoZSBzdG9yYWdlIGluIHlvdXIg
bmV3IGxhcHRvcCBpcwo+PiBub3Qgd2hhdCB3ZSBrbm93IGFzIGEgaGFyZCBkaXNrLiBJdCBjb3Vs
ZCBiZSB0aGF0IGl0IGlzIGEgc29saWQgc3RhdGUgZGlzay4KPj4gSWYgdGhlIHN0b3JhZ2UgY29u
bmVjdGlvbiBpcyBOVk1lIChOb24gdm9sYXRpbGUgbWVtb3J5IGV4cHJlc3MpIGl0IHdvdWxkCj4+
IHNob3cgdXAgYXMgL2Rldi9udm1lMCouIFRoZXJlIGFyZSBhbHNvIG90aGVyIHBvc3NpYmxlIGFs
dGVybmF0aXZlcwo+PiBkZXBlbmRpbmcgb24gY29ubmVjdGlvbiBhbmQgc3RvcmFnZSB0eXBlLiBT
U0QgaXMgbm90IHRoZSBvbmx5IHBvc3NpYmlsaXR5Lgo+Pgo+PiBNb3N0IGxpa2VseSB5b3VyIFVi
dW50dSBkaXN0cmlidXRpb24gZG9lc24ndCB1bmRlcnN0YW5kIHlvdXIgbGFwdG9wcwo+PiBzdG9y
YWdlIGNvbnRyb2xsZXIuCj4+Cj4+PiBJIHdlbnQgaW50byBXaW4xMCdzIHNldHRpbmdzIGFuZCB0
dXJuZWQgb2ZmIFVFRkksIHRoZW4gc2VjdXJlIGJvb3QuCj4+PiBTby4gU2hvdWxkIEkgcmVlbmFi
bGUgdGhlIFVFRkkgZmlybXdhcmUgYnV0IGxlYXZlIHNlY3VyZSBib290IG9mZiwKPj4+IG9yLi4u
Pwo+Pgo+PiBCeSBhbGwgbWVhbnMgeW91IHNob3VsZCBoYXZlIGxlZnQgdGhlIHNldHRpbmdzIGlu
dGFjdC4gQWxsIGRlY2VudAo+PiBMaW51eCBkaXN0cmlidXRpb25zIGFyZSBhYmxlIHRvIGJvb3Qg
d2l0aCBVRUZJIGFuZCBzZWN1cmUgYm9vdC4KPj4KPj4gU2luY2Ugd2UgZG9uJ3Qga25vdyBhbnl0
aGluZyBhYm91dCB5b3VyIGxhcHRvcCBub3IgeW91ciBVYnVudHUgTGludXgKPj4gZGlzdHJpYnV0
aW9uIGFsbCB0aGlzIGlzIG9ubHkgc3BlY3VsYXRpb24uCj4+Cj4+IElmIHlvdSB3b3VsZCBsaWtl
IHRvIGhhdmUgYSBiZXR0ZXIgYW5kIG1vcmUgZWR1Y2F0ZWQgYW5zd2VyIHRvCj4+IHlvdXIgcHJv
YmxlbSBwbGVhc2UgdGVsbCBhcyBtdWNoIGFzIHBvc3NpYmxlIGFib3V0IHRoZSBzaXR1YXRpb24u
Cj4+IElmIHlvdSBzdGlsbCBoYXZlIFdpbmRvd3MgaW5zdGFsbGVkIG9uIHRoZSBjb21wdXRlciB5
b3UgY291bGQgZ28gdG8KPj4gQWJvdXQgdGhpcyBjb21wdXRlciBhbmQgY2hlY2sgd2hhdCBraW5k
IG9mIHN0b3JhZ2UgeW91IGhhdmUgaW5zdGFsbGVkLgo+Pgo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

