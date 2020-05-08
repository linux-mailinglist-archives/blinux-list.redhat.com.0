Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 6A5531CA032
	for <lists+blinux-list@lfdr.de>; Fri,  8 May 2020 03:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1588902042;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Mi9n6yNPx9nVIT/R/l8SFIlrUeuQiwhY0b6MDzoyzKs=;
	b=hooidElNXFwtWNDuOFEbsnGAtjmj5c/R/sn68ytoN4TqYUJaIJwNfZgRQgOs2amaQRpk5B
	yqhG++1SMJxShOkCFhhHmbBsZ0Z1Q3QoTNxyFaXkU/TgdyIOYmGBa0jwCWNLcFOIOsa8Sh
	da0Qwe7fg6Ajk2quhhOIZdJ7R/8oLjU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-302-n6w_R-oNMZy6SWd6HXvuaA-1; Thu, 07 May 2020 21:40:40 -0400
X-MC-Unique: n6w_R-oNMZy6SWd6HXvuaA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9FF2B835B40;
	Fri,  8 May 2020 01:40:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BA025C1B0;
	Fri,  8 May 2020 01:40:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3869C4CAA0;
	Fri,  8 May 2020 01:40:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0481e7v3008495 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 May 2020 21:40:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 00D032026972; Fri,  8 May 2020 01:40:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0F0A2026971
	for <blinux-list@redhat.com>; Fri,  8 May 2020 01:40:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DA966811E7A
	for <blinux-list@redhat.com>; Fri,  8 May 2020 01:40:03 +0000 (UTC)
Received: from p3plsmtpa12-04.prod.phx3.secureserver.net
	(p3plsmtpa12-04.prod.phx3.secureserver.net [68.178.252.233]) (Using
	TLS) by
	relay.mimecast.com with ESMTP id us-mta-157-X1jr5aOPN2CHqjewiBoEXA-1;
	Thu, 07 May 2020 21:40:00 -0400
X-MC-Unique: X1jr5aOPN2CHqjewiBoEXA-1
Received: from [192.168.50.215] ([72.205.36.177]) by :SMTPAUTH: with ESMTPA
	id WrzajRPuJdXXWWrzbjs73y; Thu, 07 May 2020 18:39:59 -0700
X-CMAE-Analysis: v=2.3 cv=aOWOVo1m c=1 sm=1 tr=0
	a=KrEcpKSwXc6ZHCuzcgfT3w==:117 a=KrEcpKSwXc6ZHCuzcgfT3w==:17
	a=IkcTkHD0fZMA:10 a=20KFwNOVAAAA:8 a=C9rDRMEI8PKWpcfErykA:9
	a=QEXdDO2ut3YA:10 a=M-L8O40jsvsA:10
X-SECURESERVER-ACCT: cstrobel@crosslink.net
Subject: Re: Tab-Completing a Program After man?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2005061731420.9482@server2.shellworld.net>
	<alpine.NEB.2.21.2005070001100.25293@panix1.panix.com>
	<Pine.LNX.4.64.2005062106410.11539@server2.shellworld.net>
Message-ID: <fcca34ac-46b4-cb54-d490-30c87be07187@crosslink.net>
Date: Thu, 7 May 2020 21:39:58 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2005062106410.11539@server2.shellworld.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJM46WIcrMpHwqP2lmjhJyjlxcQvEQ7vrk/IcEj6XOCwXrB/62ba5L8DJyrIh4112YFps1dmj64bTuXa8zhEc7FjT4/VWLvSSTASBBAYCP4hgKsss0OY
	xDg1M3u65MkzW4dSTY21OXcqN6bf2+Qq8WScG6uPL4vf07W36sE+nmkqWGjRXRDZTQzxXMlSWkVdNg==
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0481e7v3008495
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

IMKgwqDCoCBUYWIgY29tcGxldGlvbiBpcyBmb3IgZmluZGluZyB0aGluZ3MgaW4gdGhlIGRpcmVj
dG9yeSB5b3UgYXJlIApwb2ludGluZyB0by7CoCBUbyBmaW5kIG1hbnVhbCBlbnRyaWVzIGNvbnRh
aW5pbmcgYSBzdHJpbmcgdHJ5OgoKbWFuIC1rIGx5bgoKb3IKCm1hbiAtayBvcmNhCgoKT24gNS83
LzIwMjAgMTI6MDcgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSnVzdCB0eXBpbmcKPiBtYW4gMSBseW4KPiBnaXZlIHNhbWUgcmVzdWx0cy4KPiBDaGltZQo+
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

