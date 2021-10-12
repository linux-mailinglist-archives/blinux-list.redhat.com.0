Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A8C6542AFA7
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 00:30:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634077802;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Yao56tDKsavKwxPRbGzcL7prA2NhmFOoQ4NF8/gcDAc=;
	b=jGSr/N5RjNsC8vlxDD1ryNTgd/e29F4bBDM48TZoGq/8wRECVrgPctMpjLPX23iBB1r7D/
	jKvQKPJsV5brzdMdH2BP3Mjbji1g4BMXyMxRQrj4M1zZP8dxe+boduY7PBJ3m7tucI2Uc5
	wSK4jChXwiCohyq4QBR1pBvbETZlvP8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-mS6w-5K4MtuMNxrieTUf7A-1; Tue, 12 Oct 2021 18:29:59 -0400
X-MC-Unique: mS6w-5K4MtuMNxrieTUf7A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB0BE801AA7;
	Tue, 12 Oct 2021 22:29:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 998965F4E2;
	Tue, 12 Oct 2021 22:29:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2233A4EA2A;
	Tue, 12 Oct 2021 22:29:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19CMTlu0024461 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 Oct 2021 18:29:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8D4EE404727A; Tue, 12 Oct 2021 22:29:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86F4B4047272
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 22:29:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CF5D800C00
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 22:29:47 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-513-juV3WyYKM1KYcaaNICWSVg-1; Tue, 12 Oct 2021 18:29:45 -0400
X-MC-Unique: juV3WyYKM1KYcaaNICWSVg-1
Received: by mail-ot1-f48.google.com with SMTP id
	d21-20020a9d4f15000000b0054e677e0ac5so1157286otl.11
	for <blinux-list@redhat.com>; Tue, 12 Oct 2021 15:29:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=GFv/wtHA3Xc01pTqIDVUaevI7Nmny5OGiVN9RFVUDo4=;
	b=TwFBRLfeeCUh0Z3OlcpJOpnO73dPpQjolgi6emgJ93Osz2PnaxAd9xzELuwi8hcfba
	+9zcDBpt9RtkQ2kgQDBNRMmGYsHfNpk12WLww7pqc7NQju3orQfpiEhtMEmL7AcBZblx
	4Me6b0EpI4BeO2utBoYXPY1Rrm/3HknqGASsogJNHRNQW+HY7R5cyJbvs7ZLWVcZT32g
	rjr0EFQAAOA2cq1chGSYS1XLYZu9mE+nB9MuH6L3Pn1wrZ2g2zOlEZyqJk7UZItdJ4jO
	mRaQ+BFI5Gp+lr4F5DUyCFvVSOrlQD+rctgyIty46Gpl+yYpft6iOJ2ex+WrK3r0CYTV
	Cnkw==
X-Gm-Message-State: AOAM5339GnznaixAVBv/6avd5rsfjYzN/Gc9EbEyHQ4HQIReBXIeLAAL
	ej8DSaZNbQnfVoxXZUO8ES3Hj7wpAA8=
X-Google-Smtp-Source: ABdhPJznnVNtin54gSc09sOQTxliY1VonQTBhgLrudvuiQabFftSUZYrIBtOxWhjw0Bd7XNgY8QyEw==
X-Received: by 2002:a05:6830:2430:: with SMTP id
	k16mr16444374ots.237.1634077784566; 
	Tue, 12 Oct 2021 15:29:44 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:58d0:fb73:2550:ef8e])
	by smtp.gmail.com with ESMTPSA id e2sm2279633ooh.40.2021.10.12.15.29.44
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Oct 2021 15:29:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
Date: Tue, 12 Oct 2021 17:29:43 -0500
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
Message-Id: <B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19CMTlu0024461
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyB3YXMgZmVkb3JhIDM0IG1hdGUuCgo+IE9uIE9jdCAxMiwgMjAyMSwgYXQgNToxOSBQTSwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cj4gCj4gV2hhdCBkaXN0cmlidXRpb24gaXMgdGhpcyBvbj8KPiBEZXZpbiBQcmF0
ZXIKPiByLmQudC5wcmF0ZXJAZ21haWwuY29tCj4gZ2VtaW5pOi8vdGlsZGUucGluay9+ZGV2aW5w
cmF0ZXIvCj4gCj4gCj4gCj4gT24gVHVlLCBPY3QgMTIsIDIwMjEgYXQgNDoxNiBQTSBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDwKPiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3
cm90ZToKPiAKPj4gQWZ0ZXIgaW5zdGFsbGluZywgSSBoZWFyZCDigJlzY3JlZW4tcmVhZGVyIG9m
ZuKAmSwgc28gSSB0dXJuZWQgb3JjYSBvbi4KPj4gVGhlbiBJIHdhcyB0b2xkIHRvIHJlYm9vdC4K
Pj4gQWZ0ZXIgcmVib290aW5nLCBJIHR1cm5lZCBvcmNhIG9uLCB0aGVuIGxvZ2dlZCBpbi4KPj4g
VGhlbiwgbm8gc3BlZWNoLgo+PiBDb3VsZCBub3QgZ2V0IG9yY2Egd29ya2luZy4KPj4gCj4+PiBP
biBPY3QgMTIsIDIwMjEsIGF0IDc6MTIgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gPAo+PiBibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+IAo+Pj4gQSBodWdl
ICsxIGZvciBGZWRvcmEgTUFURS4gSSBoYXZlIGl0IHJ1bm5pbmcgb24gdHdvIGNvbXB1dGVycyBo
ZXJlLCBvbmUKPj4gaXMgbm90IG1pbmUsIGFuZCBpdCB3b3JrcyBncmVhdC4gT3JjYSBjb21lcyB3
aXRoIGl0LCBhbmQgeW91IGNhbiBydW4gYSBmdWxsCj4+IGluc3RhbGwgYWZ0ZXIgcHJlc3Npbmcg
YWx0K2YyIHRvIG9wZW4gdGhlIHJ1biB3aW5kb3cgYW5kIHRoZW4gZW50ZXJpbmcgdGhlCj4+IHdv
cmQgb3JjYS4gV2lmaSBnZW5lcmFsbHkgd29ya3Mgb3V0IG9mIHRoZSBib3gsIHRob3VnaCB0aGUg
TmV0d29ya01hbmFnZXIKPj4gYXBwbGV0IHRoYXQgY29udHJvbHMgaXQgZG9lc24ndCB0ZWxsIHlv
dSB3aGF0IGl0IGlzLiBTdGlsbCwgeW91IGNhbiBqdXN0Cj4+IGhvbGQgdGhlIGFsdCBhbmQgY29u
dHJvbCBrZXlzIGFuZCBkb3VibGUgdGFwIHRoZSB0YWIga2V5IHRvIGdldCB0byB0aGUgdG9wCj4+
IHBhbmVsLCB0aGVuIHNoaWZ0IHRhYiBwYXN0IHRoZSB0b2dnbGUgYnV0dG9uIGFuZCBwcmVzcyB0
aGUgZW50ZXIga2V5IHRvCj4+IGJyaW5nIHVwIHRoZSBtZW51IHRoYXQgaGFzIHlvdXIgd2lmaSBj
b25uZWN0aW9ucy4gVGhlcmUncyBub3QgbXVjaCBtb3JlIHRvCj4+IHRlbGwgb3RoZXIgdGhhbiBp
dCdzIGEgZ3JlYXQgT1MsIG5vdCBqdXN0IGZvciBsZWFybmluZywgYnV0IGZvciBkYWlseSB1c2Us
Cj4+IGFuZCBvbmUgb2YgdGhlIGNvbXB1dGVycyBpbiB0aGUgaG91c2UgdGhhdCBpcyBydW5uaW5n
IGl0IGlzIGV2ZW4gYmVpbmcgdXNlZAo+PiBmb3IgZ2FtaW5nIGFuZCBsaXZlIHN0cmVhbWluZy4g
SWYgeW91IG5lZWQgdG8gZGlnIGRlZXBlciBpbnRvIHRoZSBndXRzIG9mCj4+IHRoZSBzeXN0ZW0s
IGl0IGFsbG93cyBmb3IgdGhhdCBhcyB3ZWxsLiBJIGZvciBvbmUgaGlnaGx5IHJlY29tbWVuZCB0
aGUKPj4gRmVkb3JhIE1BVEUgc3Bpbi4KPj4+IAo+Pj4gfkt5bGUKPj4+IAo+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4gCj4+IAo+PiAKPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

