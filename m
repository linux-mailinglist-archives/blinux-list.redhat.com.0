Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4F12124C7E1
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 00:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597963496;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nN5/aa8XEYg+xfywBLy/7PO1ZPe0/mX7qRij7z2W6K0=;
	b=TDz1YHNdmWGkHAUbOcS4z7Cww64J31Wj6Ri796gs51lSFFEdHVt9T46+gtGGuCuBv7dFAF
	IYnNZavqbSXxb0/peW8XqGU83xpbO4OVYl1qcyd5j5hK3AG6iL/2BWl/zjMXilc5/K8LeM
	0a6gOgsUSv2+TS8l7oLvWGTGS6aeqlM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-24-9pxR3acsOKudGoH9OXlwig-1; Thu, 20 Aug 2020 18:44:48 -0400
X-MC-Unique: 9pxR3acsOKudGoH9OXlwig-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 275A41885D83;
	Thu, 20 Aug 2020 22:44:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05B657A40D;
	Thu, 20 Aug 2020 22:44:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2990E18095FF;
	Thu, 20 Aug 2020 22:44:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KMiaVx030105 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 18:44:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2D2192157F24; Thu, 20 Aug 2020 22:44:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 113952157F23
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 22:44:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97E6A811E93
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 22:44:33 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-513-5S9WbN5bOxylHMkPdTulOQ-1;
	Thu, 20 Aug 2020 18:44:29 -0400
X-MC-Unique: 5S9WbN5bOxylHMkPdTulOQ-1
Received: from ici.slint.fr (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 3FAE4BE7E3
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 23:43:50 +0200 (CEST)
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
Message-ID: <e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
Date: Fri, 21 Aug 2020 00:44:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
Content-Language: fr
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 07KMiaVx030105
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0cmllZCB0byBmaW5kIGFnaXQgcmVwbywgdG8gbm8gYXZhaWw6IG5vdGhpbmcgdW5kZXIgdGhl
IFN1U0Ugb3Igb3BlbnN1c2UgdW1icmVsbGFzLCB3aGl0aCBTQkwgYXMgU3VzZSBibGludXggYXJn
dW1lbnRzLgoKQW55d2F5IGFzIGxvbmcgYXMgc291cmNlIHNvdXJjZSBwYWNrYWdlcyBhcmUgYXZh
aWxhYmxlLCB0aGF0IGRvZXNuJ3QgbWF0dGVyIG11Y2ggaW4gbXkgb3Bpbmlvbi4KCkRpZGllcgoK
TGUgMjEvMDgvMjAyMCDDoCAwMDozMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdMKgOgo+IFRoZSB2ZXJzaW9uIG9uIHRoYXQgc291cmNlIHJwbSBsb29rcyBsaWtl
IHlvdSBzaG91bGQgYmUgYWJsZSB0byBkb3dubG9hZCBpdCBmcm9tIGEgZ2l0IHJlcG9zaXRvcnkg
c29tZXdoZXJlLiBBbHRob3VnaCBEZWJpYW4gc2hvdWxkbid0IGJlIGluIHRoZSBzb3VyY2UgdHJl
ZSB1bmRlciBtb3N0IGNpcmN1bXN0YW5jZXMsIGVzcGVjaWFsbHkgaW4gYW4gUlBNLCBwZXJoYXBz
IHNvbWV0aGluZyBpbiB0aGVyZSBjYW4gdGVsbCB5b3Ugd2hlcmUgdGhlIGdpdCByZXBvc2l0b3J5
IGlzLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

