Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A50194C530F
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 02:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645839332;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+HdIFBl9wsrTqjPF7kXXIMW6C2lUF6FUNZ7ThF0srgA=;
	b=GcWe0uNfJ16prRIR3yuUjONgiEi51ZnAQJg1VCcK9ijYnDbvkuT6yD/83JbjbkNtCksEEw
	yE5ELxaCwoHwleOEF2ZzglFFmjH/0IvL447mh6TvOsaHGPXn1zFeDIB7IfTulEuk8+RUls
	Ueomy2KiOYz0uc/ar/93PSNiROuxDTw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-294-0CbC00WlPLeyjVmFbGgFeA-1; Fri, 25 Feb 2022 20:35:29 -0500
X-MC-Unique: 0CbC00WlPLeyjVmFbGgFeA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D6775200;
	Sat, 26 Feb 2022 01:35:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C780294C39;
	Sat, 26 Feb 2022 01:35:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D8264ED66;
	Sat, 26 Feb 2022 01:35:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21Q1BmUk007707 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 20:11:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 254FE400E101; Sat, 26 Feb 2022 01:11:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20CC44010A13
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 01:11:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6D5821C06930
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 01:11:47 +0000 (UTC)
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
	[185.70.40.133]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-313-5zeXyVEVNfi7TqwXz4pj6Q-1; Fri, 25 Feb 2022 20:11:45 -0500
X-MC-Unique: 5zeXyVEVNfi7TqwXz4pj6Q-1
Date: Sat, 26 Feb 2022 01:11:35 +0000
To: blinux-list@redhat.com
Subject: Re: Voice assistant on Linux?
Message-ID: <23199229-22fb-11bf-01b9-b5de96bbccd8@protonmail.com>
In-Reply-To: <753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
References: <37760ebe-f519-16b6-2f46-691c0708aedf@gmail.com>
	<5a55ff72-4742-1540-5859-c169a1ab81f8@free2.ml>
	<1f5fe928-53cd-2c91-4ff6-f14339f36d19@gmail.com>
	<753fd4ae-d611-e942-7270-a777b53858cf@free2.ml>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	T_SCC_BODY_TEXT_LINE shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21Q1BmUk007707
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

SGksCgpNeWNyb2Z0IGhhcyBpdHMgc21hcnQgc3BlYWtlciBhcyB3ZWxsLCBjYWxsZWQgTWFyayBJ
SToKCmh0dHBzOi8vbXljcm9mdC5haS9wcm9kdWN0L21hcmstaWkvCgoKSSd2ZSBwcmUtb3JkZXJl
ZCBvbmUgbXlzZWxmLCBzaG91bGQgYmUgc2hpcHBlZCBzb21ldGltZXMgaW4gU2VwdGVtYmVyLgoK
SSdtIHByZXR0eSBjdXJpb3VzIHdoYXQgd2lsbCBpdCBiZSBjYXBhYmxlIG9mLiBJIGNlcnRhaW5s
eSBjb3VsZG4ndCBydW4KYSBwcm9wcmlldGFyeSBkZXZpY2UgbGlrZSBBbWF6b24gRWNobyBvciBH
b29nbGUgSG9tZSBoZXJlLCBJJ3ZlIHJlYWQgYW4KYXJ0aWNsZSBvbiB3aGF0IGtpbmRzIG9mIHRo
aW5ncyBkbyBBbWF6b24gZW5naW5lZXJzIGhlYXIgb24gdGhlCmRpYWdub3N0aWNzIHJlY29yZGlu
Z3MsIGFuZCBpdCB3YXMgZW5vdWdoIHRvIG1lIG5vdCB0byB0cnVzdCBhbnkKY29uc3RhbnRseSBs
aXN0ZW5pbmcgbWljcm9waG9uZSB0aGF0IGlzIG5vdCBvcGVuLXNvdXJjZS4KCgpNeWNyb2Z0IHdv
cmtzIGNvbXBsZXRlbHkgb2ZmbGluZSBpbiB0aGlzIHJlZ2FyZCwgc28gdGhhdCdzIGZpbmFsbHkK
c29tZXRoaW5nIEkgY2FuIHRydXN0LgoKClRob3VnaCwgSSB3b25kZXIsIGRpZCBhbnlvbmUgcmVh
ZCB0aGVpciBsaWNlbnNlIHRlcm1zIGFuZCBwcml2YWN5IHBvbGljeT8KCldlbGwsIEkgZGlkLCBh
bmQgSSdtIG5vdCBzdXJlIHdoZXRoZXIgaXQncyBqdXN0IG1lLCBidXQgZnJvbSBteQp1bmRlcnN0
YW5kaW5nIG9mIHdoYXQgSSd2ZSByZWFkIHRoZXJlLCBiYXNpY2FsbHksIG5vdGhpbmcgb2YgdGhl
IHByaXZhY3kKc3R1ZmYgdGhleSBjbGFpbSBvbiB0aGVpciB3ZWJzaXRlIC0gcHJpdmF0ZSB2b2lj
ZSByZWNvZ25pdGlvbiwgcHJpdmF0ZQpjb21tYW5kcyBwcm9jZXNzaW5nLCB2b2x1bnRhcnkgdGVs
ZW1ldHJ5IGV0Yy4KCmlzIHJlYWxseSBhbmNob3JlZCBpbiB0aGVpciBwcml2YWN5IHBvbGljeS4g
SW4gZmFjdCwgZXZlbiB0aGUgb3Bwb3NpdGUKaW4gc29tZSByZWdhcmRzLgoKRm9yIGV4YW1wbGUs
IHdoYXQgaXMgdGhpcz8KCgoiKipXaGVuIHlvdSB1c2Ugb3VyIFNlcnZpY2VzIGluY2x1ZGluZyB0
aGUgTXljcm9mdCBWb2ljZSBBc3Npc3RhbnQsIHlvdXIKdm9pY2UgYW5kIGF1ZGlvIGNvbW1hbmRz
IGFyZSB0cmFuc21pdHRlZCB0byBvdXIgU2VydmVycyBmb3IgcHJvY2Vzc2luZy4qKiIKCgpJc24n
dCB0aGUgZXhhY3Qgb3Bwb3NpdGUgb25lIG9mIHRoZWlyIG1haW4gc2VsbGluZyBwb2ludHM/CgoK
QW5kIHRoZSBzZWN0aW9uIHJpZ2h0IGJlbG93OgoKCiIqIFRoZSBJbmZvcm1hdGlvbiBXZSBDb2xs
ZWN0IEFib3V0IFlvdQoqIFJlZ2lzdHJhdGlvbiBhbmQgQWNjb3VudCBQcm9maWxlCiogVm9pY2Ug
Q29tbWFuZHMiCgoKU291cmNlOiBodHRwczovL215Y3JvZnQuYWkvZW1iZWQtcHJpdmFjeS1wb2xp
Y3kvCgoKSG9uZXN0bHksIEkgdGVuZCB0byByZWFkIGxpY2Vuc2VzIGZyb20gdGltZSB0byB0aW1l
LCBqdXN0IHRvIHNlZSB3aGF0IGFtCkkgYWdyZWVpbmcgdG8uCgpBbmQgdGhpcyBpcyBvbmUgb2Yg
dGhlIHdvcnN0IHByaXZhY3kgcG9saWNpZXMgSSd2ZSBldmVyIHNlZW4uIENvdWxkIHZlcnkKd2Vs
bCBiZSBjYWxsZWQganVzdCB0cmFja2luZyBwb2xpY3ksIHNpbmNlIGl0IHNlZW1zIHRvIGJlIGRl
c2lnbmVkIG9ubHkKdG8gcHJvdGVjdCB0aGVtIGZvciBjYXNlcyBvZiBhbnkgZGF0YSBjb2xsZWN0
aW9uIHJldmVhbHMuCgoKVGhlaXIgZ2VuZXJhbCBsaWNlbnNlIHRlcm1zIGFyZSBzaW1pbGFybHkg
cnViYmVyaXNoLCBkZWZlbmRpbmcgbW9yZSB0aGUKY29tcGFueSB0aGFuIGl0cyBjdXN0b21lcnMu
CgpUaG91Z2gsIGluIHRoaXMgY2FzZSwgSSBjYW4gYWN0dWFsbHkgdW5kZXJzdGFuZCBpdCwgc29t
ZSBwZW9wbGUgYXJlCndpbGxpbmcgdG8gc3VlIGNvbXBhbmllcyBmb3IgY29tcGxldGVseSByaWRp
Y3Vsb3VzIHJlYXNvbnMsIHNvIGl0J3MgZ29vZApmb3IgYSBzdGFydHVwIHRvIGhhdmUgYSBzb2xp
ZCBkZWZlbnNlIGZvciBzdWNoIGNhc2VzLgoKCkJ1dCB0aGUgcHJpdmFjeSBwb2xpY3kgd291bGQg
YmUgcmVhbGx5IHBvb3IgZXZlbiBmb3IgYW4gYXZlcmFnZSBjb21wYW55LApzcGVhayBvZiBvbmUg
dGhhdCdzIGxpdGVyYWxseSBiYXNlZCBvbiBwcml2YWN5LgoKCkFoLi4uCgoKUmVnYXJkbGVzcywg
SSBob3BlIHRoaXMgaXMganVzdCBhIHByb2R1Y3Qgb2YgbGF3aWVycyB3aG8gZG9uJ3QKdW5kZXJz
dGFuZCB0ZWNobm9sb2d5IGFuZCBkYXRhIHN0dWZmIHZlcnkgd2VsbC4KCkhvcGVmdWxseSBvcGVu
LXNvdXJjZSBzb2Z0d2FyZSB3aWxsIHByb3RlY3QgdXMgZnJvbSBzaGFkeSBwcmFjdGljZXMuCgpU
aGlzIGlzIG9uZSBvZiB0aGUgbWFueSBhZHZhbnRhZ2VzIG9mIE9TUy4gTGljZW5zZXMgYXJlIGp1
c3Qgd29yZHMsIGJ1dAppZiBhcmNoaXRlY3R1cmUgaXMgb3BlbiAod2hhdCBzaG91bGQgYmUgdGhl
IGNhc2Ugd2l0aCBNeWNyb2Z0KSwgaXQKc2hvdWxkIGJlIHBvc3NpYmxlIHRvIHZlcmlmeSB3aGF0
IGlzIGVhY2ggcGFydCBkb2luZyBhbmQgaWYgaXQncyBkb2luZwppdCByaWdodC4KCgppIHdhbnRl
ZCB0byBwbGF5IHdpdGggdGhlIHNwZWVjaCByZWNvZ25pdGlvbiBtb2R1bGVzIGFueXdheSwgc2lu
Y2UgSQp3YW50ZWQgdG8gdHJ5IG91dCB3aGF0IE5WSURJQSdzIE5lTW8gY291bGQgcHVsbCBvZiBp
biBhIHNwZWFrZXIgbGlrZQp0aGlzLCBzbyB3ZSdsbCBzZWUuCgoKQmVzdCByZWdhcmRzCgoKUmFz
dGlzbGF2CgoKRMWIYSAyNS4gMi4gMjAyMiBvIDIwOjMwIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gSSB0aG91Z2h0IEkgcmVtZW1iZXJlZCBzb21lb25l
IHRlbGxpbmcgbWUgdGhhdCB5b3UgY291bGQgaW5zdGFsbCBBbGV4YQo+IHVzaW5nIFNuYXAsIGJ1
dCBJIGFsc28gcmVtZW1iZXIgaXQgYmVpbmcgc29tZXdoYXQgZXhwZXJpbWVudGFsIG9yIHNvbWV0
aGluZy4KPgo+Cj4gWWVzLCBJIGFsc28gaGF2ZSBhIGNvdXBsZSBvZiBBbGV4YSBkZXZpY2VzLCBJ
IGp1c3Qga2VlcCB0aGVtIG91dCBvZgo+IGJlZHJvb21zIGFuZCBiYXRocm9vbXMsIHdoYXQgSSBj
b25zaWRlciB0byBiZSB0aGUgbW9zdCBwcml2YXRlIHBhcnRzIG9mCj4gdGhlIGhvdXNlLiBUaGV5
IHN0YXkgaW4gdGhlIGxpdmluZ3Jvb20gYW5kIGtpdGNoZW4sIHdoZXJlIHRoZXkgYXJlIG1vc3QK
PiB1c2VmdWwgYXQgYW55IHJhdGUuCj4KPiB+S3lsZQo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdA==

