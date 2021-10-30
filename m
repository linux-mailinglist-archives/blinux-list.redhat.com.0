Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B098440B7E
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 21:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635622276;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/xNPqI6hqP5HkRfW1BE2fFb8XlpI0zLppkAr2P2c78I=;
	b=YlvfZvat94oPbjcsz4Wq/Ybz36T32EfTOSIFzfQAczkM2a1RVueX5axwsXE+fNgEaX045U
	ydZOSnU5UWFiu9/367gRWIdtB43kiHnZKQx7l6g9henWJIBmvWiRiwoK5i+bpiiacoCDnD
	nnbs5Y16FnZz8rz/KKp/Rt0WhFp2Vns=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-kh6LCIq_PvGd02HlwwSfpQ-1; Sat, 30 Oct 2021 15:31:14 -0400
X-MC-Unique: kh6LCIq_PvGd02HlwwSfpQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0673F1006AA2;
	Sat, 30 Oct 2021 19:31:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D6BA60936;
	Sat, 30 Oct 2021 19:31:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3377F1803B30;
	Sat, 30 Oct 2021 19:31:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19UJV0hq018848 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 30 Oct 2021 15:31:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 687602166B26; Sat, 30 Oct 2021 19:31:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 633D12166B25
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 19:30:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E920800883
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 19:30:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-217-R0ed1jwUNY2p1zG77zBxbg-1; Sat, 30 Oct 2021 15:30:55 -0400
X-MC-Unique: R0ed1jwUNY2p1zG77zBxbg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HhTt70sqYz3q85
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 15:30:55 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HhTt7092Yzcbc; Sat, 30 Oct 2021 15:30:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HhTt66h3kzcbW
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 15:30:54 -0400 (EDT)
Date: Sat, 30 Oct 2021 15:30:54 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Coconut speech at startup
In-Reply-To: <DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110301529560.17098@panix1.panix.com>
References: <9F0E8E47-7471-495E-A98F-BCB9122EB801@gmail.com>
	<DA67F7C5-5947-4414-83A3-8E27FC9B60DB@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19UJV0hq018848
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

VHJ5IGdldHRpbmcgaW50byBhIHRlcm1pbmFsIGFuZCBydW4gbm10dWkuICBQcm9iYWJseSBhIGdv
b2QgaWRlYSB0byBtYW4Kbm10dWkgZmlyc3QgdGhvdWdoLgoKCk9uIFNhdCwgMzAgT2N0IDIwMjEs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cgo+IEhpCj4gSXMgdGhl
cmUgYSBzaG9ydGN1dCBvciBhIGhvdGtleSB0byBzaG93IHRoZSBsaXN0IG9mIGF2YWlsYWJsZSB3
aS1maSBuZXR3b3JrcyBpbiBhY2Nlc3NpYmxlIGNvY29udXQ/IFNvIGZhciBJIGNhbiBvbmx5IGdl
dCBhIGxpc3Qgb2Ygd2ktZmkgbmV0d29yayBieSBwcmV0ZW5kaW5nIHRvIGluc3RhbGwgY29jb251
dC4gV2hlbiBpIHR5cGUgbmV0d29yayBpbiB0aGUgc2VhcmNoIGkgZ2V0IG9wdGlvbnMgZm9yIHNl
dHRpbmcgcHJveHkuCj4gVGhhbmtzIGEgbG90IGZvciB5b3VyIGhlbHAuCj4gSWJyYWhpbQo+Cj4K
PiBTZW50IGZyb20gbXkgaVBob25lCj4KPiA+IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTE6MTQgUE0s
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5j
b20+IHdyb3RlOgo+ID4KPiA+IO+7v1NjcmVlbiByZWFkZXIgc2V0dGluZ3MKPiA+IEluc2VydCBw
bHVzIHNwYWNlCj4gPgo+ID4KPiA+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiA+Cj4gPj4gT24gT2N0
IDI5LCAyMDIxLCBhdCAxMTowNCBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gPj4KPiA+PiDvu79UaGFua3MgYSBt
aWxsaW9uLiBJIGp1c3QgZmlndXJlZCB3aGF0IEkgd2FzIGRvaW5nIHdvcm5nLiBJIGp1c3QgcmVh
bGl6ZWQgdGhhdCBoaXR0aW5nIGFsdC1mMSBvciBhbHQtZjIgZG9lcyBub3Qgd29yayBvbiBteSBs
YXB0b3AuIEkgbmVlZGVkIHRvIHB1c2ggdGhlIGZ1bmN0aW9uIGtleSBhbG9uZyB3aXRoIHRoZSBh
bHQgZjEgb3IgZjIgZm9yIGl0IHRvIHdvcmsuIE5vdyBJIGNhbiBhY2Nlc3MgdGhlIG1lbnVzIGp1
c3QgZmluZS4KPiA+Pgo+ID4+IEkgc3RpbGwgbmVlZCB0byBmaWd1cmUgb3V0IGEgd2F5IG9mIGNo
YW5naW5nIHRoZSBkZWZhdWx0IHNwZWVjaCBlbmdpbmUsIGFuZCBhIHdheSB0byBoYXZlIGl0IGRp
c3BsYXkgZm9yZWlnbiBjaGFyYWN0ZXJzIG9uIHRoZSBCcmFpbGxlIGRpc3BsYXkuIEZvciBleGFt
cGxlLCBXaGVuIEkgZG8gYSB5b3V0dWJlIHNlYXJjaCBhbmQgZ2V0IGEgaGl0IGluIEFyYWJpYyBv
ciBIZWJyZXcgaXQgZGlzcGxheXMgdGhlIEFyYWJpYyBvciBIZWJyZXcgY2hhcmFjdGVycyBhcyBx
dWVzdGlvbiBtYXJrcy4gSSBhbSBzdXJlIHRoZXJlIGlzIGEgd2F5IG9mIGRlYWxpbmcgd2l0aCB0
aGlzLgo+ID4+Cj4gPj4gaW4gdGhlIG5leHQgc3RhZ2UsIEkgbmVlZCB0byBmaWd1cmUgYSBzYWZl
IHdheSBvZiBpbnN0YWxsaW5nIGl0IGFsb25nc2lkZSBteSB3aW5kb3dzIHdpdGhvdXQgc2NyZXdp
bmcgdSAgICBwIG15IHdpbmRvd3Mgb3BwZXJhdGlvbi4KPiA+Pgo+ID4+IFRoYW5rcyBhIGxvdCBh
Z2FpbiBmb3IgeW91ciBoZWxwLgo+ID4+Cj4gPj4gQnkgdGhlIHdheSBJIGFtIG5vdyB3cml0aW5n
IHRoaXMgZW1haWwgdXNpbmcgdGhlIHRodW5kZXJiaXJkIHRoYXQgY29tZXMgd2l0aCB0aGUgYWNj
ZXNzaWJsZSBDb2NvbnV0Cj4gPj4KPiA+Pj4+IE9uIDEwLzMwLzIxIDY6MDQgQU0sIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPj4+IHN1cGVyLXQgbWF5IGdldCB5
b3UgYSB0ZXJtaW5hbCB3aGljaCBnaXZlcyB5b3UgYSBjb21tYW5kIGxpbmUuICBZb3UnbGwKPiA+
Pj4ga25vdyBpZiBhICQgY29tZXMgdXAgYXMgYSAgcHJvbXB0IG9yIGEgIyBjb21lcyB1cC4gIEZh
aWxpbmcgdGhhdCBhbHQtK2YyCj4gPj4+IHRoZW4gdHlwZSBtYXRlLXRlcm1pbmFsIG9yIGdub21l
LXRlcm1pbmFsIGFuZCBoaXQgZW50ZXIuCj4gPj4+Cj4gPj4+Cj4gPj4+PiBPbiBGcmksIDI5IE9j
dCAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Pj4K
PiA+Pj4+IFRoYW5rcyBhIG1pbGxpb24gZm9yIHlvdXIgaGVscC4gSSB0cmllZCB5b3VyICBzdWdn
ZXN0aW9ucyB0byBubyBhdmFpbC4gSG93ZXZlciwgc29tZXRoaW5nIHN0cmFuZ2UgaGFwcGVuZWQs
IHdoZW4gSSBjb25uZWN0ZWQgbXkgYnJhaWxsZSBkaXNwbGF5IGl0IGNvbm5lY3RlZCB0byBhY2Nl
c3NpYmxlIGNvY29udXQgcmlnaHQgYXdheS4gSSB3YXMgYWJsZSB0byBicm93c2UgdGhlIG1lbnVz
IGFuZCBjb25uZWN0IHRvIHRoZSBpbnRlcm5ldC4gRHVyaW5nIG15IGJyb3dzaW5nIHRoZSBzcGVl
Y2ggY2FtZSBvbi4KPiA+Pj4+IEkgaGF2ZSB0d28gcXVlc3Rpb25zLCBob3cgY2FuIEkgZ2V0IGEg
Y29tbWFuZCBsaW5lIHByb21wdD8gTXkgc2Vjb25kIHF1ZXN0aW9uIGlzLCB3aGF0IGlzIHRoZSBj
b21tYW5kIHRvIHR1cm4gb2ZmIHRoZSBjb21wdXRlcj8gQWx0IGY0IGRpZCBub3QgdGFrZSBtZSB0
aGVyZS4KPiA+Pj4+IENoZWVycywKPiA+Pj4+IElicmFoaW0KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4g
U2VudCBmcm9tIG15IGlQaG9uZQo+ID4+Pj4KPiA+Pj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDE6
NTYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJl
ZGhhdC5jb20+IHdyb3RlOgo+ID4+Pj4+Cj4gPj4+Pj4g77u/UHJlc3MgYWx0IHBsdXMgRjEuCj4g
Pj4+Pj4gRG8geW91IGhlYXIgc3BlZWNoPwo+ID4+Pj4+IElmIG5vdCwgcHJlc3MgZXNjYXBlLgo+
ID4+Pj4+IFByZXNzIGFsdCBwbHVzIEYyCj4gPj4+Pj4gVHlwZQo+ID4+Pj4+IG9yY2EKPiA+Pj4+
PiBQcmVzcyBlbnRlci4KPiA+Pj4+PiBUaGlzIHNob3VsZCBmaXggaXQuCj4gPj4+Pj4KPiA+Pj4+
Pgo+ID4+Pj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPiA+Pj4+Pgo+ID4+Pj4+PiBPbiBPY3QgMjks
IDIwMjEsIGF0IDE6MjUgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+ID4+Pj4+Pgo+ID4+Pj4+PiDvu79JcyB0aGVy
ZSBhIHN0ZXAgYnkgc3RlcCB0dXRvcmlhbCBvbiBob3cgdG8gc3RhcnQ/Cj4gPj4+Pj4+IEkgZG93
bmxvYWRlZCB0aGUgYWNjZXNzaWJsZSBjb2NvbnV0IGlzbyBhbmQgcHV0IGl0IG9uIGEgYm9vdGFi
bGUgdXNiIGRyaXZlLiBJIHdhcyBhYmxlIHRvIGJvb3QgdGhlIG1hY2hpbmUgZnJvbSB0aGUgdXNi
LCBidXQgdGhlcmUgd2FzIG5vIHNwZWVjaCB0byBndWlkZSBtZS4gSSB3YXMgYWJsZSB0byBjb25m
aXJtIHRoYXQgSSBpbmRlZWQgYm9vdGVkIGZyb20gdXNiIHdpdGggYWNjZXNzaWJsZSBjb2NvbnV0
IGJ5IHVzaW5nIG15IGlQaG9uZSBjYW1lcmEuIEkgaGF2ZSBubyBpZGVhIGhvdyB0byBnZXQgdGhl
IHNwZWVjaCBnb2luZy4gU28gcGxlYXNlIGlmIHlvdSBoYXZlIGEgdHV0b3JpYWwsIHNlbmQgaXQg
bXkgd2F5Lgo+ID4+Pj4+PiBJYnJhaGltCj4gPj4+Pj4+Cj4gPj4+Pj4+IFNlbnQgZnJvbSBteSBp
UGhvbmUKPiA+Pj4+Pj4KPiA+Pj4+Pj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDEwOjI5IEFNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29t
PiB3cm90ZToKPiA+Pj4+Pj4+IO+7v0hlbGxvLAo+ID4+Pj4+Pj4gV2hlbiB1c2luZyB0aGUgbGl2
ZSBDRCwgVGhlIHNjcmVlbnJlYWRlciBzdGFydGVkIGF0IGJvb3QuCj4gPj4+Pj4+PiBCdXQgYSAg
YWZ0ZXIgSSBpbnN0YWxsZWQgaXQsIEkgZ2V0IG5vIHNjcmVlbnJlYWRlciBhdCBzdGFydHVwLgo+
ID4+Pj4+Pj4gQWxsIHNldHRpbmdzIGFzIGZhciBhcyBJIGtub3cgYXJlIGNvcnJlY3QuCj4gPj4+
Pj4+PiBUaGUgb25seSB3YXkgdG8gZ2V0IHNwZWVjaCBpcyB0byBnbyB0byB0aGUgcnVuIHdpbmRv
dyB3aXRoCj4gPj4+Pj4+PiBBbHQrRjIKPiA+Pj4+Pj4+IFRoZW4gdHlwZQo+ID4+Pj4+Pj4gb3Jj
YQo+ID4+Pj4+Pj4gQW5kIHByZXNzIGVudGVyLgo+ID4+Pj4+Pj4gSSByZWluc3RhbGxlZCBsaW51
eCBhbmQgZ290IHRoZSBzYW1lIHJlc3VsdC4KPiA+Pj4+Pj4+IEFzIEkgd2FzIGRvaW5nIHRoZSBp
bnN0YWxsLCBJIGNoZWNrZWQgdGhlIGJveCB0byBnZXQgdXBkYXRlcyBkdXJpbmcgdGhlIGluc3Rh
bGwuIENvdWxkIHRoaXMgYmUgdGhlIGNhdXNlIG9mIG15IHRyb3VibGU/Cj4gPj4+Pj4+Pgo+ID4+
Pj4+Pj4gVGhhbmtzLAo+ID4+Pj4+Pj4gUm9iCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+
PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5j
b20KPiA+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiA+Pj4+Pj4+Cj4gPj4+Pj4+Cj4gPj4+Pj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+ID4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pgo+
ID4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+ID4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPiA+Pj4+Cj4gPj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gPj4+Cj4gPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+IEJsaW51eC1saXN0IG1haWxpbmcg
bGlzdAo+ID4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gPj4+IGh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pgo+ID4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4gPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Cj4gPgo+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+ID4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4KPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

