Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D1F495560
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 21:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642710236;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bNE9xuvjIRkmRnBPrdtHm3CdnfZziZtCt02Cdb1+KE8=;
	b=aep1nUhyTwGZtdUCWnGXjW/HR7+aiser+gHXg20W5zpAL6hKoOoSfR8GC/n9i3sJSVYaxm
	MsQv5dF4aeZ/lfPpru5M2oLuY9r4vFk6nCl4dAUSXUVCkwNbOlyzU6u3sJrJCLA6maKzYW
	c1rQZw8idGebYRFl/SFMJgT7I4pavMU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-572-Vt3ZKZbHME2KGzeCNIr-ew-1; Thu, 20 Jan 2022 15:23:52 -0500
X-MC-Unique: Vt3ZKZbHME2KGzeCNIr-ew-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E655100C609;
	Thu, 20 Jan 2022 20:23:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71B291002D70;
	Thu, 20 Jan 2022 20:23:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 946974BB7C;
	Thu, 20 Jan 2022 20:23:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KKNUlm006271 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 15:23:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B0ED51120AB3; Thu, 20 Jan 2022 20:23:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A8E111121335
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 20:23:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A59FD85A5B5
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 20:23:24 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-159--QM24ddJNoSSeQl0EfAVRQ-1;
	Thu, 20 Jan 2022 15:23:22 -0500
X-MC-Unique: -QM24ddJNoSSeQl0EfAVRQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 4677520152
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 20:23:17 +0100 (CET)
Message-ID: <1f4eeb29-ae04-f228-bde9-ed99e748d801@slint.fr>
Date: Thu, 20 Jan 2022 21:23:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Getting Ready For linux
To: blinux-list@redhat.com
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
	<7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
	<68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
	<CAM+Q2c4uqchNLEK8Y1a2Gcf_Uyw6+518je+w6G9PKh-wzwVe5g@mail.gmail.com>
	<2420ea82-49a6-324d-006a-96d54f2e9f6b@gmail.com>
In-Reply-To: <2420ea82-49a6-324d-006a-96d54f2e9f6b@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20KKNUlm006271
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSG93YXJkLAoKSSBoYXZlIGZvdW5kIHNvbWUgbGlua3MKCllvdSBuZWVkIGZpcnN0IHRvIGRp
c2FibGUgU2VjdXJlIEJvb3QgYXMgaW5kaWNhdGVkIGhlcmU6Cmh0dHBzOi8vd3d3LmFzdXMuY29t
L3N1cHBvcnQvRkFRLzEwNDQ2NjQKClRoZW4gaWYgeW91IGFyZSBsdWNreSB0aGUgbWFjaGluZSB3
aWxsIGJvb3QgZGlyZWN0bHkgb2ZmIHRoZSBVU0Igc3RpY2sgYW5kIHRoZQppbnN0YWxsZXIgd2ls
bCBzdGFydC4KCkVsc2UsIHlvdSB3aWxsIG5lZWQgdG8gY2hhbmdlIHRoZSBib290IG9yZGVyIGZy
b20gdGhlIEJJT1MKSG93IHRvIGJvb3QgdGhlIHN5c3RlbSBmcm9tIFVTQiBmbGFzaCBkcml2ZS9D
RC1ST00KaHR0cHM6Ly93d3cuYXN1cy5jb20vc3VwcG9ydC9GQVEvMTAxMzAxNwoKb3IgZnJvbSBX
aW5kb3dzIChub3Qgc3VyZSBhYm91dCB0aGF0KToKSG93IHRvIGVudGVyIHRoZSBCSU9TIGNvbmZp
Z3VyYXRpb24KaHR0cHM6Ly93d3cuYXN1cy5jb20vc3VwcG9ydC9GQVEvMTAwODgyOQoKWW91IHdp
bGwgbmVlZCBhIHNpZ2h0ZWQgaGVscCwgSSB0aGluay4KQ2hlZXJzLApEaWRpZXIKCgpMZSAyMC8w
MS8yMDIyIMOgIDAxOjQ0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6lj
cml0wqA6Cj4gSSdtIGdvbm5hIHVzZSBteSBBc3VzIGRlc2t0b3AgY29tcHV0ZXIgdG8gbWFrZSB0
aGlzIGxpbnV4IHN5c3RlbSBkaXNrLsKgIERvZXMKPiBhbnlvbmUga25vdyBob3cgdG8gZ2V0IGlu
dG8gdGhlIEJJT1Mgc2V0dXAgcHJvZ3JhbSBvbiBhbiBBc3VzIE0zMkNEIGRlc2t0b3AKPiBtYWNo
aW5lP8KgIEl0J3Mgbm90IG9idmlvdXMgd2F0Y2hpbmcgdGhlIHN0YXJ0dXAgc2NyZWVuLgo+IAo+
IFRoYW5rcy4KPiBIb3dhcmQKPiAKPiBPbiAxLzE5LzIwMjIgMTI6MDcgUE0sIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IFllcywgYnV0IHRoZXJlIG1heSBuZWVk
IHRvIGJlIGEgc2V0dGluZyBpbiBiaW9zIHRvIGVuYWJsZSBpdC4KPj4KPj4gT24gMS8xOS8yMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4+PiBIaSBIb3dhcmQsCj4+Pgo+Pj4gdGhlIFNsaW50IFVTQiBzdGljayBjb250
YWlucyBhbGwgeW91IG5lZWQgdG8gaW5zdGFsbCBTbGludCwgbm90IGFuIGFscmVhZHkKPj4+IGlu
c3RhbGxlZCBzeXN0ZW0uCj4+Pgo+Pj4gSW5zdHJ1Y3Rpb25zIGhlcmU6wqAgaHR0cHM6Ly9zbGlu
dC5mci9kb2MvSGFuZEJvb2suaHRtbCNfc2xpbnRfaW5zdGFsbGF0aW9uCj4+Pgo+Pj4gSSBzdWdn
ZXN0IHRoYXQgeW91IGNob29zZSB0aGUgQXV0byBpbnN0YWxsYXRpb24gbW9kZSwgZWFzaWVyIGZv
ciBiZWdpbm5lcnMuCj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4gRGlkaWVyCj4+Pgo+Pj4gTGUgMTkvMDEv
MjAyMiDDoCAxODoyNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3Jp
dMKgOgo+Pj4+IFRoYW5rcyB0byBhbGwgd2hvIGhhdmUgbWFkZSBzdWdnZXN0aW9ucy4KPj4+Pgo+
Pj4+IEZpcnN0OiBJIGRvd25sb2FkZWQgdWJ1bnR1IGFuZCBmbGFzaGVkIGl0IHRvIGEgVVNCIHN0
aWNrLgo+Pj4+Cj4+Pj4gTmV4dDogSSBnb3QgbXkgbWluZCBjaGFuZ2VkIChwcm9iYWJseSBmb3Ig
dGhlIG5iZXR0ZXIpLCBzbyBJIGRvd25sb2FkZWQKPj4+PiBTbGluawo+Pj4+IGFuZCBmbGFzaGVk
IGl0IHRvIGFub3RoZXIgVVNCIHN0aWNrLgo+Pj4+Cj4+Pj4gTm93IEkgaGF2ZSB0d28gVVNCIHN0
aWNrcyB0aGF0IGVhY2ggY29udGFpbiBhIHZlcnNpb24gb2YgbGludXguIEFzc3VtaW5nCj4+Pj4g
SSdtCj4+Pj4gZ29ubmEgZ28gd2l0aCBTbGlubnQsIGRvIEkgbm93IGhhdmUgYSBib290YWJsZSB3
b3JraW5nIGNvcHkgb2YgU2xpbnQ/wqAgT3IKPj4+PiBpcwo+Pj4+IHRoZXJlIG1vcmUgdG8gZG8g
YmVmb3JlIEknbSBhY3R1YWxseSBydW5uaW5nIGxpbnV4Pwo+Pj4+Cj4+Pj4gVGhhbmtzIHN0aWxs
IG1vcmUuCj4+Pj4KPj4+PiBIb3dhcmQKPj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGlu
dXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3Q=

