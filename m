Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB7F4579C3
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 00:56:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637366200;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vZ3alba+fP6F6kEDQIPfOs1u4g8LYbj6A4uOHIlkLrU=;
	b=KAvFZHhOXUyUVwTMeSBXi2HPVlWBi5dCWnDnKr3KGTvu2klLtyWlDdzF/POGU5IQb0Ue5i
	dLTMCPa3YdbTv/bVJVSYi3PTCkcPOuSZah9Ho9or9SlkmfSTOi4RtiJGG2vofbdCc7+JBB
	uNXbwnCMJUc9Q7hXMo/5/DFxB8y+sVk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-467-omSj3Yy5MVeADJ76u4pnwA-1; Fri, 19 Nov 2021 18:56:37 -0500
X-MC-Unique: omSj3Yy5MVeADJ76u4pnwA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3ACA7802CBC;
	Fri, 19 Nov 2021 23:56:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E9F0196E2;
	Fri, 19 Nov 2021 23:56:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 732F34A703;
	Fri, 19 Nov 2021 23:56:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJNtD1T030683 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 18:55:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 93FC440CFD15; Fri, 19 Nov 2021 23:55:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E9FF40CFD14
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:55:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 74B7F8011A5
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:55:13 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-23-gPTdlSbLMrK0AhHnso2URA-1;
	Fri, 19 Nov 2021 18:55:11 -0500
X-MC-Unique: gPTdlSbLMrK0AhHnso2URA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9B52EA4213
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:54:32 +0100 (CET)
Message-ID: <27faddc5-8702-657d-a523-e00ad5d44d0a@slint.fr>
Date: Sat, 20 Nov 2021 01:55:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
	<9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
	<7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
	<fc822abc-4ee9-89fb-2c6e-b61477e0b8ae@gmail.com>
	<5f7fb95f-74a0-6a95-bf96-d933e513c814@gmail.com>
	<4d0aaf05-9983-fc2f-20a2-633b7bd58928@slint.fr>
	<8129c699-92c6-a1cd-cc9d-ca383ff3999e@gmail.com>
In-Reply-To: <8129c699-92c6-a1cd-cc9d-ca383ff3999e@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AJNtD1T030683
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCmp1c3QgcGx1Zy1pbiB0aGUgU2xpbnQgaW5zdGFsbGVyIGFuZCByZWJvb3Qu
CgpJZiB5b3UgYXJlIGx1Y2t5IHRoZSBtYWNoaW5lIHdpbGwgYm9vdCBmcm9tIHRoZSBpbnN0YWxs
ZXIuCgpXaGVuIHlvdSB3aWxsIGdldCB0aGUgcHJvbXB0LCBiZWluZyBsb2dnZWQgaW4gYXMgcm9v
dCwgeW91IHdpbGwgYmUgYWJsZSAKdG8gdXNlCnRoZSB1dGlsaXRpZXMgaW5jbHVkZWQgaW4gdGhl
IGluc3RhbGxlciBpbnN0ZWFkIG9mIHR5cGluZyBhdXRvIG9yIGRvYyBvciAKc2V0dXAuCgpJdCdz
IGJlZCB0aW1lIGZvciBtZSBub3csIG1lYW53aGlsZSBpZiB5b3UgdGVsbCBieSB3aGF0IHlvdSB3
YW50IHRvIHJlcGxhY2UKRmVkb3JhIG9uIHRoZSBpbnRlcm5hbCBkcml2ZSBJIHdpbGwgdGVsbCB5
b3UgaG93IHRvIGRvIHRoYXQgdG9tb3Jyb3cuCgpJZiB0aGUgZmlybXdhcmUgZG9lcyBub3QgYm9v
dCBkaXJlY3RseSBmcm9tIHRoZSBTbGludCBpbnN0YWxsZXIgeW91IHdpbGwgCm5lZWQgYQpzaWdo
dGVkIGhlbHAgdG8gY2hvb3NlIHRoZSByaWdodCBvcHRpb24gaW4gdGhlIGZpcm13YXJlJ3MgbWVu
dS4KCkNoZWVycywKRGlkaWVyCgpMZSAyMC8xMS8yMDIxIMOgIDAwOjM3LCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGkgRGlkaWVyLAo+IAo+IEhvdyBk
byB5b3UgZG8gdGhhdD8gSSBoYXZlIG5vIGlkZWEgd2hhdCB5b3UgbWVhbnQuIENhbiB5b3UgZ2l2
ZSBtZSBtb3JlIAo+IGluZm9ybWF0aW9uPwo+IAo+IAo+IENoZWVycywKPiAKPiBJYnJhaGltCj4g
Cj4gT24gMTEvMTkvMjAyMSA3OjA1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+PiBIaSBJYnJhaGltLAo+Pgo+PiBNYXliZSB5b3UgY2FuIG1ha2UgdGhlIG5l
ZWRlZCBjaGFuZ2VzIGZyb20gdGhlIFNsaW50IGluc3RhbGxlciwgaWYgdGhlIAo+PiBmaXJtd2Fy
ZSBib290cyBhdXRvbWF0aWNhbGx5IGZyb20gYSBwbHVnZ2VkLWluIFVTQiBzdGljay4KPj4KPj4g
Q2hlZXJzLAo+PiBEaWRpZXIKPj4KPj4gTGUgMTkvMTEvMjAyMSDDoCAyMzo0NSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+Pj4gSXQgYWxyZWFkeSBpbnN0
YWxsZWQgaXQgdG8gdGhlIHN5c3RlbSBpbnRlcm5hbCBkcml2ZSwgdW5mb3J0dW5hdGVseS4gCj4+
PiBUaGUgcXVlc3Rpb24gaXMgaG93IHRvIGdldCByZWQgb2YgaXQuIEkgd2lsbCBoYXZlIHRvIGdl
dCBvbmUgb2YgbXkgCj4+PiBzaWdodGVkIGZyaWVuZHMgdG8gcmVzZXQgbXkgYm9vdCB1cCBvcHRp
b25zIHRvIGRlZmF1bHQuCj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4+Cj4+PiBP
biAxMS8xOS8yMDIxIDQ6NTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Pj4gVGhlIGJvb3Rsb2FkZXIgY2hlY2tib3ggaXMgaW4gdGhlIGRpc2sgY29uZmln
dXJhdGlvbi4gSSdsbCBoYXZlIHRvIAo+Pj4+IGxvb2sgYXQgaXQgYWdhaW4gdG8gYmUgc3VyZSwg
YnV0IGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCBpdCdzIGluIAo+Pj4+IHRoZSB3aW5kb3cgdGhh
dCBwb3BzIHVwIHdoZW4geW91IHNlbGVjdCB0aGUgZGlzayB3aGVyZSB5b3UncmUgCj4+Pj4gaW5z
dGFsbGluZyB0aGUgT1MuIEFjdHVhbGx5LCBJIHRoaW5rIGl0J3MgYSBidXR0b24gb3Igc29tZSBz
dWNoIHRoYXQgCj4+Pj4gc2F5cyAiZG8gbm90IGluc3RhbGwgYm9vdGxvYWRlciwiIGJ1dCBhZ2Fp
biwgSSdsbCBoYXZlIHRvIGxvb2sgYXQgaXQgCj4+Pj4gYWdhaW4uIEkgZG8ga25vdyB0aGVyZSBp
cyBhIHdheSB0byBrZWVwIGl0IGZyb20gaW5zdGFsbGluZyB0aGUgCj4+Pj4gYm9vdGxvYWRlciwg
YXMgd2VsbCBhcyBhIHdheSB0byBpbnN0YWxsIHRvIGEgZGlmZmVyZW50IGRpc2suIEJ5IAo+Pj4+
IGRlZmF1bHQsIGl0IGluc3RhbGxzIHRvIHRoZSBzeXN0ZW0gaW50ZXJuYWwgZHJpdmUsIHdoaWNo
IHlvdSBkbyBub3QgCj4+Pj4gd2FudC4KPj4+PiB+S3lsZQo+Pj4+Cj4+Pj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Cj4+Pgo+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4KPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

