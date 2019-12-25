Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id DAED612A6F1
	for <lists+blinux-list@lfdr.de>; Wed, 25 Dec 2019 10:11:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1577265105;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kvoJtKlHDK0CWefCAt+Vwmvrqt3Exe60/EC+6g+bRG4=;
	b=bl9BnADqVVM52iHZ3rWToquTLrCTDjhZP9K77X5FONUiaxtDWt0NNkD1+QfDranu+uKdE+
	GvRY0VCepb5mLRqsyS8TwqrSqZ74XbrNmYS9qoCa9+MqAn2Lh9Ci45gQn/w3FlJ6Q3Eb92
	AyTSumMf5HZ2YtLP4sizSAWbyFQeBpc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-RX9MIbW-OYmQNCT8Qnc74A-1; Wed, 25 Dec 2019 04:11:43 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 90A98107ACC4;
	Wed, 25 Dec 2019 09:11:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6324660BE2;
	Wed, 25 Dec 2019 09:11:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0D95118095FF;
	Wed, 25 Dec 2019 09:11:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id xBP9BFYr006880 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Dec 2019 04:11:15 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7908A2063204; Wed, 25 Dec 2019 09:11:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 744BF2026D67
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 09:11:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 46A51801E81
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 09:11:13 +0000 (UTC)
Received: from gateway33.websitewelcome.com (gateway33.websitewelcome.com
	[192.185.146.130]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-156-qWD6HDOmO3W-Gz_hOFPgLw-1; Wed, 25 Dec 2019 04:11:11 -0500
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway33.websitewelcome.com (Postfix) with ESMTP id B4D851432
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 03:11:10 -0600 (CST)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id k2hCisHGAqNtvk2hCiYEYU; Wed, 25 Dec 2019 03:11:10 -0600
X-Authority-Reason: nr=8
Received: from igld-84-229-96-201.inter.net.il ([84.229.96.201]:56382
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1ik2hC-003Lpv-DK
	for blinux-list@redhat.com; Wed, 25 Dec 2019 03:11:10 -0600
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id E1226260040
	for <blinux-list@redhat.com>; Wed, 25 Dec 2019 11:11:07 +0200 (IST)
Date: Wed, 25 Dec 2019 11:11:07 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archlinux lxde ratpoison adventure
Message-ID: <20191225111107.5a80ffdc@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.21.1912241239030.23485@panix1.panix.com>
References: <alpine.NEB.2.21.1912241239030.23485@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.96.201
X-Source-L: No
X-Exim-ID: 1ik2hC-003Lpv-DK
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-201.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.201]:56382
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-MC-Unique: qWD6HDOmO3W-Gz_hOFPgLw-1
X-MC-Unique: RX9MIbW-OYmQNCT8Qnc74A-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id xBP9BFYr006880
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
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgpPbiBUdWUsIDI0IERlYyAyMDE5IDEyOjQyOjI1IC0wNTAwCkxpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgoKPiBJIGNh
bid0IHlldCBnZXQgdGhpcyBjb21iaW5hdGlvbiBydW5uaW5nIHNpbmNlIHJhdHBvaXNvbiBjYW4n
dCBmaW5kIGEKPiBESVNQTEFZIHlldC4gIFRoZSBsaW51eCBzeXN0ZW0gaGFkIGEgY29tbWFuZCBs
aW5lIGVudmlyb25tZW50IGVhcmxpZXIgYW5kCj4gaGFkIG5vIG5lZWQgb2YgYSBESVNwTEFZIGF0
IHRoYXQgdGltZS4gIEknbSBjdXJpb3VzIHRvIGtub3cgaWYgcmF0cG9pc29uCj4gd2lsbCBiZSBi
ZXR0ZXIgdGhhbiB4b3JnIGFuZCBJJ3ZlIGFscmVhZHkgZ290IHJhdHBvaXNvbiBpbiBteSAueGlu
aXRyYwo+IGZpbGUuCj4KCnJhdHBvaXNvbiBpcyBhIHdpbmRvdyBtYW5hZ2VyIGFuZCBkZXBlbmRz
IG9uIHhvcmcgKHNlZQpodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9SYXRwb2lzb24gKSBh
bmQgZG9lcyBub3QgcmVwbGFjZSBpdC4KCkp1c3QgbXkgMiBjZW50cy4KCi0tIAoKU2hsb21pIEZp
c2ggICAgICAgaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcvCkFwcGxlIEluYy4gaXMgRXZpbCAt
IGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnL29wZW4tc291cmNlL2FudGkvYXBwbGUvCgpPZmZp
Y2VyOiBDYXB0YWluLCB0aGVyZeKAmXMgYSBuZXcgc3RhciBzeXN0ZW0gYSBmZXcgdGhvdXNhbmRz
IG9mIGxpZ2h0eWVhcnMKYXdheSwgYW5kIGl0cyBzdW4gaGFzIGFuIGlycmVndWxhciBzaGFwZS4K
ICAgIOKAlCBodHRwOi8vd3d3LnNobG9taWZpc2gub3JnL2h1bW91ci9TdGFyLVRyZWsvV2UtdGhl
LUxpdmluZy1EZWFkLwoKUGxlYXNlIHJlcGx5IHRvIGxpc3QgaWYgaXQncyBhIG1haWxpbmcgbGlz
dCBwb3N0IC0gaHR0cDovL3NobG9tLmluL3JlcGx5IC4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

