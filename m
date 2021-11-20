Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 623DD458054
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 21:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637440212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q6Q0woUlqrHZT+KwPHKi150YslPr0y29nFnEQEvbTkw=;
	b=MA1HAeUmteqQdc3Jh8t+v7ejmacD6xJ4N0vIx4RGLmW+Iw9QIq8P9EaCL4NQh8ruX8x+DQ
	Zus2x8y+DLJfSHUxSooi4CAvqjPG8eqX8Suoj/9UO2oB2zyvw0PMOPancqE+2YmYov69+9
	8rlG4YhsqnrDAmxfpUw9ndtyeMROleg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-445-5Aj8ou9TOh2Ai90H4wPwrQ-1; Sat, 20 Nov 2021 15:30:08 -0500
X-MC-Unique: 5Aj8ou9TOh2Ai90H4wPwrQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E1D31100C609;
	Sat, 20 Nov 2021 20:30:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C836B60C04;
	Sat, 20 Nov 2021 20:30:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A2524A703;
	Sat, 20 Nov 2021 20:30:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKKTxgr022171 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 15:29:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9FFC440CFD0C; Sat, 20 Nov 2021 20:29:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 843AE400DFBC
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 20:29:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B3F9100DE6B
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 20:29:59 +0000 (UTC)
Received: from st43p00im-zteg10063501.me.com (st43p00im-zteg10063501.me.com
	[17.58.63.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-76-P7RGAKruMdutqyI9l8ScTg-1; Sat, 20 Nov 2021 15:29:57 -0500
X-MC-Unique: P7RGAKruMdutqyI9l8ScTg-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10063501.me.com (Postfix) with ESMTPSA id BB7CFC803C1
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 20:29:56 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Mint Mate folder options?
Date: Sat, 20 Nov 2021 15:29:55 -0500
References: <0B4FABFE-C65D-4207-B145-A053DB7D16AB@icloud.com>
	<e96bb0e4-fac5-9a01-e6a7-2107feb49bb3@gmail.com>
	<ae60eca3-2e49-4efd-8a75-1fd5e113b6d7@icloud.com>
	<b06fb48b-b02e-801d-bbb5-fb21baad6670@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <b06fb48b-b02e-801d-bbb5-fb21baad6670@gmail.com>
Message-Id: <50868271-9B1F-4B38-BDCB-A7012F749EE3@icloud.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.790
	definitions=2021-11-20_06:2021-11-17,
	2021-11-20 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2111200130
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AKKTxgr022171
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0ssIHRoYXTigJlzIHdoeSBJIGNvdWxkIG5vdCBmaW5kIGl0LgpUaGFua3MKUm9iCgoKCj4gT24g
Tm92IDIwLCAyMDIxLCBhdCAzOjI1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBBIGNvcnJlY3Rpb24gdG8g
dGhlIHNlY29uZCBwYXJ0IG9mIG15IG9yaWdpbmFsIHJlc3BvbnNlLi4uCj4gSSBtZW50aW9uZWQg
TWludFR3ZWFrLCBidXQgaXQgaXMgTWF0ZS1Ud2Vhay4KPiBzdWRvIGFwdC1nZXQgaW5zdGFsbCBt
YXRlLXR3ZWFrCj4gWW91IGNhbiB0aGVuIGFjY2VzcyBpdCBmcm9tIHRoZSBtYWluIG1lbnUgKEFs
dCtGMSkgU3lzdGVtPlByZWZlcmVuY2VzPkxvb2smRmVlbD5NYXRlLVR3ZWFrLgo+IAo+IEpvaG4K
PiAKPiAKPiBPbiAxMS8xOS8yMDIxIDY6MzQgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4+IFRoYW5rIHlvdSwKPj4gSSBuZXZlciB0aG91Z2h0IHRvIGxvb2sg
b24gdGhlIGVkaXQgbWVudSBmb3IgcHJlZmVyZW5jZXMuCj4+IFJvYgo+PiA9PT0KPj4gSGksCj4+
IFRvIHNldCB5b3VyIGZvbGRlciBvcHRpb25zOgo+PiAxLiBPcGVuIGEgZm9sZGVyLCBzdWNoIGFz
IHlvdXIgSG9tZSBmb2xkZXIuCj4+IDIuIFByZXNzIEFsdCtlIHRvIG9wZW4gdGhlIGVkaXQgbWVu
dS4KPj4gMy4gQXJyb3cgZG93biB0byBwcmVmZXJlbmNlcyBhbmQgcHJlc3MgRW50ZXIuCj4+IDQu
IFRoaXMgc2NyZWVuIGhhcyBhIG51bWJlciBvZiB0YWJzIGluY2x1ZGluZzogVmlld3MsIEJlaGF2
aW9yLCBEaXNwbGF5LCBMaXN0Lgo+PiA1LiBZb3UgY2FuIHRhYiB0aHJvdWdoIHRoZSB2YXJpb3Vz
IG9wdGlvbnMgb24gZWFjaCB0YWIgcGFnZS4gWW91IG1heSBoYXZlIHRvIHVzZSB0aGUgT3JjYSBs
aW5lIHVwL2Rvd24gY29tbWFuZHMgdG8gbGVhcm4gYWJvdXQgZm9sZGVyIG9wdGlvbiBjb250cm9s
cyB0aGF0IGRvIG5vdCBzcGVhay4gVXNpbmcgdGhpcyBtZXRob2QsIHlvdSBjYW4gc2V0IGFsbCBv
ZiB0aGUgZm9sZGVyIG9wdGlvbnMuCj4+IEFsc28sIGxvb2sgZm9yIGEgcHJvZ3JhbSBjYWxsZWQg
TWludFR3ZWFrLiBJIGluc3RhbGxlZCBpdCB1c2luZyBhcHQtZ2V0LiBJdCBnaXZlIHlvdSBjb250
cm9sIG92ZXIgdmFyaW91cyBzeXN0ZW0gb3B0aW9ucywgaW5jbHVkaW5nIHdoaWNoIHN5c3RlbSBp
Y29ucyB0byBkaXNwbGF5IG9uIHRoZSBkZXNrdG9wLgo+PiBIVEgsCj4+IEpvaG4KPj4gT24gMTEv
MTkvMjAyMSA1OjAwIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+Pj4gRGVhciBMaXN0LAo+Pj4gSSBoYXZlIHNlYXJjaGVkIHRoZSBjb250cm9sIGNlbnRlciwg
YnV0IGNhbnQgZmluZCBvdXQgaG93IHRvIGNoYW5nZSB0aGUgZGVmYXVsdCBmb2xkZXIgdmlld3Ms
IG9yIGhvdyB0byBnZXQgYSBhcmUgeW91IHN1cmUgZGlhbG9nIHdoZW4gZGVsZXRpbmcgZmlsZXMu
Cj4+PiBJIGhhZCBhIGhhcmQgdGltZSBzZWxlY3RpbmcgdGhlIGljb25zIHRvIHNob3cgb24gdGhl
IGRlc2t0b3AuIEkgaGFkIHRvIHVzZSBmbGF0IHJldmlldyB0byBzZWxlY3QgbXkgb3B0aW9ucy4K
Pj4+IEJ1dCBhcyBJIHNhaWQsIEkgY2FudCBmaW5kIGFueXRoaW5nIGFib3V0IGZvbGRlciBvcHRp
b25zLgo+Pj4gCj4+PiBUaGFua3MsCj4+PiBSb2IKPj4+IAo+Pj4gCj4+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+PiAKPj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

