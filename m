Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AA32A24E97B
	for <lists+blinux-list@lfdr.de>; Sat, 22 Aug 2020 21:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598125526;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iSyfBDcnLM4uc7hhQp+K9pg/l5THAX98Mfo7JjETjgw=;
	b=WcY2T+C9Y4PkXnAkTgVRsahzik5dVcJnOmq8ITNuV4kd2F/iiBj0YQBD0tY2sTSHD8TAWh
	N8XPcogCw4rRTtr/NUn//6T3MqMR+EYzHli07FDeJU4mqBklurqXlyRzYsBX4J9KA867pH
	bNRLLa5P9uEAB/4knRn+Y0G9AdPKzpk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-297-M_oWIp8UMI6Yf96vkFvy6Q-1; Sat, 22 Aug 2020 15:45:24 -0400
X-MC-Unique: M_oWIp8UMI6Yf96vkFvy6Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C4C3C801AB4;
	Sat, 22 Aug 2020 19:45:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A9211756F2;
	Sat, 22 Aug 2020 19:45:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A2A5693371;
	Sat, 22 Aug 2020 19:45:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07MJhdhw004492 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 22 Aug 2020 15:43:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CBA492017E80; Sat, 22 Aug 2020 19:43:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3669202279B
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:43:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 939A0901852
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 19:43:31 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-504-bKjnO3O-PMaDJo6ZyC8p8A-1; Sat, 22 Aug 2020 15:43:29 -0400
X-MC-Unique: bKjnO3O-PMaDJo6ZyC8p8A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4BYphw4vtGzctt
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 15:43:28 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4BYphw49j2zcbY; Sat, 22 Aug 2020 15:43:28 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4BYphw3dNLzcbW
	for <blinux-list@redhat.com>; Sat, 22 Aug 2020 15:43:28 -0400 (EDT)
Date: Sat, 22 Aug 2020 15:43:28 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible Distros for a beginner?
In-Reply-To: <MFMbMot--3-2@tutanota.com>
Message-ID: <alpine.NEB.2.23.451.2008221541380.21629@panix1.panix.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<MFMbMot--3-2@tutanota.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07MJhdhw004492
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91IHdhbnQgdG8gYmUgYWJsZSB0byB1c2UgdmlzdWFsaXplIG9uIGEgY29tcHV0ZXIgdG8g
c29sdmUgY2FwdGNoYXMsCmZpcmVmb3ggaXMgbm90IHRoZSB3YXkgdG8gZ28uICBXYXRlcmZveCB3
aWxsIGJlIGEgYmV0dGVyIGFsdGVybmF0aXZlLiAgT24KU2F0LCAyMiBBdWcgMjAyMCwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gRGF0ZTogU2F0LCAyMiBBdWcg
MjAyMCAxNToyMDozMgo+IEZyb206IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gVG86IGJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBD
YzogYmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IFN1YmplY3Q6IFJlOiBBY2Nlc3NpYmxlIERpc3Ry
b3MgZm9yIGEgYmVnaW5uZXI/Cj4KPiBIaSBldmVyeW9uZSwKPiBUaGFuayB5b3Ugc28gbXVjaCBm
b3IgdGhlIGRpdmVyc2UgYW5kIGluZm9ybWF0aXZlIHJlcGxpZXMuIEkgcmVhbGx5IGFwcHJlY2lh
dGUgYWxsIHRoZSBpbnB1dC4gSSBzdGlsbCBoYXZlIHRvIHJlYWQgdGhyb3VnaCBhIGZldyBvZiB0
aGUgbGlua3MgdGhhdCBzb21lIG9mIHlvdSBzZW50IGJ1dCB0aGVyZSBhcmUgc29tZSBpbnRlcmVz
dGluZyBwb3NzaWJpbGl0aWVzLgo+IFNvIGZhciwgYmFzZWQgb24gd2hhdCBJJ20gcmVhZGluZywg
SSdtIHRoaW5raW5nIG1heWJlIHRvIHN0YXJ0IHdpdGggZWl0aGVyIFN0b3JtdXggb24gdGhlIHJh
c3BiZXJyeSBQaSwgb3IgU2xpbnQgb24gYSBsYXB0b3AuIERlYmlhbiBjb3VsZCBiZSBhIHBvc3Np
YmlsaXR5LCBidXQgYXMgYSBiZWdpbm5lciBjb21pbmcgZnJvbSBXaW5kb3dzLCBJIGRvbid0IGtu
b3cgaG93IHRvIGNvbXBpbGUgc291cmNlIGZpbGVzIHlldCBsb2wuIEkgbGlrZSB0aGF0IERlYmlh
biBzZWVtcyB0byBoYXZlIGFuIGFjY2Vzc2liaWxpdHkgaW5zdGFsbGF0aW9uLiBJdCBzZWVtcyB0
byBiZSBhIHZlcnkgcG9wdWxhciBEaXN0cm8gc28gaXQgcHJvYmFibHkgaGFzIGEgdmVyeSBhY3Rp
dmUgc3VwcG9ydCBjb21tdW5pdHkgYW5kIGlmIEkgd2VyZSB0byB3YWxrIGludG8gYSBsb2NhbCBM
aW51eCBvcmdhbml6YXRpb24gSSB3b3VsZCBsaWtlbHkgZ2V0IGEgbG90IG9mIG1haW5zdHJlYW0g
aGVscCB3aXRoIGl0IHdoZW5ldmVyIEkgcnVuIGludG8gYW4gaXNzdWUuIEJ1dCBiZWluZyBhIGJl
Z2lubmVyIGNvbWluZyBmcm9tIGEgV2luZG93cyBncmFwaGljYWwgZGVza3RvcCwgSSBkb24ndCBr
bm93IGlmIERlYmlhbiB3b3VsZCBiZSBhIGdvb2QgcGxhY2UgZm9yIG1lIHRvIHN0YXJ0IGlmIEkg
d291bGQgbmVlZCB0byBhbHJlYWR5IGtub3cgaG93IHRvIGNvbXBpbGUgc291cmNlIGZpbGVzLiBJ
IHRvb2sgYSBsb29rIGF0IHRoZSBEZWJpYW4gaW5zdGFsbGF0aW9uIG1hbnVhbHMgYmVmb3JlIEkg
cmVhY2hlZCBvdXQgdG8gdGhpcyBsaXN0LCBhbmQgYXMgYSBiZWdpbm5lciwgSSB3YXMgdG90YWxs
eSBjb25mdXNlZCBieSB0aGUgaW5zdGFsbGF0aW9uIHByb2Nlc3MuIEl0cyBwcm9iYWJseSBzaW1w
bGUsIGJ1dCB0byBtZSBpdCBzZWVtZWQgY29tcGxpY2F0ZWQsIGJ1dCB0aGF0cyBwcm9iYWJseSBi
ZWNhdXNlIEknbSBzbyBuZXcgdG8gdGhpcy7CoCBJJ20gZGVmaW5pdGVseSBvcGVuIAogdG8gdGhl
IHBvc3NpYmlsaXR5IGlmIEkgY291bGQgZmlndXJlIG91dCBob3cgdG8gbWFrZSBhbiBpbnN0YWxs
YXRpb24gb2YgaXQuCj4gSSBkb24ndCBrbm93IGlmIEkgd291bGQgYWxzbyBuZWVkIHRvIGNvbXBp
bGUgc291cmNlIGZpbGVzIGZvciBTbGludCB3aGVuIEknbSBnZXR0aW5nIHN0YXJ0ZWQgd2l0aCB0
aGUgT1M/IEJ1dCBpZiBTbGludCBzdGFydHMgc3BlYWtpbmcgb3V0IG9mIHRoZSBib3ggbW9yZSBv
ciBsZXNzLCBtYXliZSBJIHdvdWxkIHN0YXJ0IHdpdGggdGhhdC4gSSBsaWtlIGhvdyBtYW55IGFj
Y2Vzc2liaWxpdHkgZmVhdHVyZXMgU2xpbnQgaGFzLiBBbmQgaWYgSSB3b3VsZG4ndCBuZWVkIHRv
IGNvbXBpbGUgYSBsb3Qgb2Ygc291cmNlIGZpbGVzLCBtYXliZSBTbGludCB3b3VsZCBiZSBhIGdv
b2QgY2hvaWNlLgo+IEt5bGUsIHlvdSBtZW50aW9uZWQgdGhlIFJhc3BiZXJyeSBQaSA0IHdpdGgg
U3Rvcm11eC4gSSdtIHZlcnkgaW50ZXJlc3RlZCBpbiB0aGlzLgo+IE1heWJlIHRoZSBSYXNwYmVy
cnkgUGkgbWlnaHQgYmUgYSBnb29kIGJlZ2lubmVycyBwbGF0Zm9ybSBiZWNhdXNlIGl0cyBhbiBh
ZmZvcmRhYmxlIHN0cmVhbWxpbmUgY29tcHV0aW5nIHN5c3RlbSB0aGF0IG1heWJlIEkgY291bGQg
c3RhcnQgd2l0aCwgdG8gcmVhbGx5IGdldCBhIGZlZWwgZm9yIExpbnV4IGFuZCB0aGVuIGxhdGVy
IGlmIEkgd2FudCB0bywgSSBjb3VsZCBpbnZlc3QgaW4gYSBoYXJkd2FyZSBjb21wYXRpYmxlIGxh
cHRvcCB0byBydW4gU2xpbnQuIE9yIG1heWJlIERlYmlhbiBvbmNlIEkgdW5kZXJzdGFuZCBob3cg
dG8gY29tcGlsZSBzb3VyY2UgZmlsZXMuIEJ1dCBtYXliZSBmb3IgYSBiZWdpbm5lciB0aGF0IHJl
YWxseSBkb2Vzbid0IGtub3cgd2hhdCBJJ20gZG9pbmcgbG9sLCBtYXliZSBTdG9ybXV4IHdvdWxk
IGJlIGEgbmljZSBsaWdodHdlaWdodCBEaXN0cm8gZm9yIG1lIHRvIGdldCBpbnRyb2R1Y2VkIHRv
IHRoZSBiYXNpY3MuIFRoYXQgd2F5LCBpZiBJIGhhdmUgYSBkaWZmaWN1bHQgdGltZSBmaWd1cmlu
ZyBzb21ldGhpbmcgb3V0LCBvciBlbmQgdXAgc29tZWhvdyBjb21wbGV0ZWx5IG1lc3NpbmcgdXAg
dGhlIHN5c3RlbSBhcyBhIG5vdmljZSBsb2wsIGl0cyBqdXN0IGEgbGl0dHRsZSBjYXJkIHRoYXQg
SSBjb3VsZCByZWluc3RhbGwgdGhlIE9TIGFuZCBleHBsb3JlIHRoaW5ncy4KPiBJIGhhdmUgbmV2
ZXIgdXNlZCBhIFJhc3BiZXJyeSBQaSBiZWZvcmUsIHNvIHBsZWFzZSBiZWFyIHdpdGggbWUgaWYg
dGhlc2UgYXJlIHNvbWUgdmVyeSBvYnZpb3VzIGJhc2ljIHF1ZXN0aW9ucy4gQnV0IHdvdWxkIGl0
IGJlIHBvc3NpYmxlIHRvIGNvbm5lY3QgdGhlIFBpIHRvIGEgYnJhaWxsZSBkaXNwbGF5Pwo+IEkg
YW0gZmluZSB3aXRoIHNwZWVjaCwgYnV0IGl0IHdvdWxkIGJlIG5pY2UgdG8gYmUgYWJsZSB0byBj
b25uZWN0IGEgYnJhaWxsZSBkaXNwbGF5IGlmIEkgd2FudCB0by4KPiBBbHNvLCBTdG9ybXV4IHNh
eXMgaXQgY29tZXMgd2l0aCBNQVRFIGFzIGEgZ3JhcGhpY2FsIGRlc2t0b3Agd2hpY2ggSSB0aGlu
ayBpcyBncmVhdCwgc2VlaW5nIGFzIEkgYW0gY29taW5nIGZyb20gdGhlIFdpbmRvd3MgZW52aXJv
bm1lbnQuIEkgYW0ganVzdCB3b25kZXJpbmcgaWYgU3Rvcm11eCB3aWxsIHJ1biB0aGluZ3MgbGlr
ZSBGaXJlZm94IGZvciBhIGJyb3dzZXI/Cj4gSSBhc2sgdGhpcyBiZWNhdXNlIEkgZG9uJ3Qgd2Fu
dCB0byB1c2UgQ2hyb21pdW0gb3IgQ2hyb21lIG9yIGFueXRoaW5nIHJlbW90ZWx5IGdvb2dsZSBy
ZWxhdGVkLiBBbHRob3VnaCBJIGtub3cgQ2hyb21pdW0gaXMgb3BlbiBzb3VyY2UsIEkgc3RpbGwg
bXVjaCBwcmVmZXIgRmlyZWZveCBvciBhIEZpcmVmb3ggZm9yay4KPiBBbHNvLCBjYW4gSSBydW4g
TGlicmVPZmZpY2Ugb24gaXQ/Cj4gSWYgaXQgY2FuJ3QgcnVuIEZpcmVmb3ggYW5kIExpYnJlT2Zm
aWNlIHRoZW4gSSBtaWdodCBkZWNpZGUgdG8gZ28gZm9yIFNsaW50IG9yIERlYmlhbiBvbiBhIGxh
cHRvcC4KPiBCdXQgdGhhdCB3b3VsZCBiZSBuaWNlIGlmIGl0IHdvdWxkIHJ1biB0aG9zZSBwcm9n
cmFtcyBhcyBpdCBzZWVtcyBsaWtlIGFuIGludGVyZXN0aW5nIG9wdGlvbiBmb3IgYSBiZWdpbm5l
ciB3aG8gaXMgcmVhbGx5IHVuZmFtaWxpYXIgd2l0aCBMaW51eCBzZXR1cHMuCj4gU2F0aHlhbiwg
dGhhbmtzIGZvciB0aGUgQWNjZXNzaWJsZSBDb2NvbnV0IHJlY29tbWVuZGF0aW9uLiBJJ3ZlIHJl
YWQgYWJvdXQgaXQgc29tZXdoZXJlIGJ1dCBkb24ndCBrbm93IG11Y2ggYWJvdXQgaXQuIEknbGwg
ZGVmaW5pdGVseSBsb29rIGl0IHVwIGFuZCByZWFkIG1vcmUgYWJvdXQgaXQgdG8gc2VlIGlmIGl0
cyBzb21ldGhpbmcgdGhhdCBJIG1pZ2h0IGxpa2UuCj4gVGhhbmtzIHNvIG11Y2ggdG8gZXZlcnlv
bmUgd2hvIGhhcyByZXBsaWVkIGFuZCBzaGFyZWQgdGhlaXIgc3VnZ2VzdGlvbnMgd2l0aCBtZS4K
PiBTTAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

