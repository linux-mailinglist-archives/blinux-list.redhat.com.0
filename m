Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 44F9E2A22A1
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 02:00:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604278816;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:autocrypt:autocrypt;
	bh=GqjEH5ANW+li4r4Ivae4zG+NV6jQHsU5Y2CCNrgZx/M=;
	b=TC20HWZy+kVZbqIJ2QDKfd1cV0e4FMdLDO4eMKYEVHpo/Ef2MuKscqEbUQSjq5/ApabF4L
	ApQBooX+rfgSROWE6G+lUGRIN0uLqkrgIev/se4zgXfDOUsORtcD8YDu3Cof+k0M9fO9C3
	Ohuw5J/n9uaGoHS+6znG/TpW6dKX7dA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-q9Oh-x0UNKCFntxYMPTYtg-1; Sun, 01 Nov 2020 20:00:14 -0500
X-MC-Unique: q9Oh-x0UNKCFntxYMPTYtg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 72F0F10866A8;
	Mon,  2 Nov 2020 01:00:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F5715C1C2;
	Mon,  2 Nov 2020 01:00:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 007FF8C7AA;
	Mon,  2 Nov 2020 01:00:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A2102qh013507 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Nov 2020 20:00:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 675571111C7C; Mon,  2 Nov 2020 01:00:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62FEF1111C75
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 00:59:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CBF5101CC67
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 00:59:59 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-386-92pK3RRBOiCIP1fcG5K-lg-1;
	Sun, 01 Nov 2020 19:59:57 -0500
X-MC-Unique: 92pK3RRBOiCIP1fcG5K-lg-1
Received: from [192.168.0.11] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9E017BE27E;
	Mon,  2 Nov 2020 00:59:04 +0100 (CET)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: Alexander Epaneshnikov <aarnaarn2@gmail.com>, orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
Autocrypt: addr=didier@slint.fr; prefer-encrypt=mutual; keydata=
	mQENBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
	dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
	TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
	jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
	63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
	AAG0H0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj6JAT8EEwEKACkCGwMHCwkIBwMC
	AQYVCAIJCgsEFgIDAQIeAQIXgAUCXcBjnwUJGlHqEgAKCRDVAgLvYMA+6v/ICAC8Oa2zXOne
	zyuFrPtNsciJWYwWamW+g5TNaY9NPnyMRNKDi7IcP6PoDwHRI8YBgo+Z9w0qFKQ/WVSI/O6s
	gm7LnOX7OEHjnub4sjrr5PHcsPRjm6iJFIgGgD+waz0K5fxcc65ti3lgHLH1tkhORyiT5EFp
	0VllWDQfPHw5avm9oopJv1FuPfZhSlFT6QhjD2ARmOrxfFBjELQZjDidckOYf/8Stoh+aK5F
	5q69DpF+bSZzOtCht+S6LT+Im5zqMgq1Dfqb3FpnVO3MyhSLeGI2nB+OFNTBGByRFKHYRsHc
	VaQBjtfsr4HnC0UR2P/bDIk/oxLnIN9nHJuL6btcf9M6
Message-ID: <d1c64e4a-565d-32ee-abb4-cc9f2a7e151a@slint.fr>
Date: Mon, 2 Nov 2020 01:59:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0A2102qh013507
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q29uZ3JhdHMgQWxleGFuZGVyIQoKTm93IGRvd25sb2FkaW5nLCB3aWxsIHRyeSBpdCBpbiBhIFZN
IHRvbW9ycm93LgoKQ2hlZXJzLCBEaWRpZXIKCkxlIDAyLzExLzIwMjAgw6AgMDE6NDksIEFsZXhh
bmRlciBFcGFuZXNobmlrb3YgdmlhIG9yY2EtbGlzdCBhIMOpY3JpdMKgOgo+IGhlbGxvIGV2ZXJ5
b25lLiBJIGFtIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhhdCBzdGFydGluZyBmcm9tIHRoaXMgZGF5
LCBhcmNoIExpbnV4Cj4gCj4gc3VwcG9ydHMgYWNjZXNzaWJpbGl0eSBvZmZpY2lhbGx5IG91dCBv
ZiB0aGUgYm94LiBbMV0KPiAKPiB5b3UgY2FuIGRvd25sb2FkIGlzbyBmcm9tIG9mZmljaWFsIHdl
YnNpdGUuIFsyXSBhbHNvIGEgZG9jdW1lbnRhdGlvbiBhYm91dAo+IGluc3RhbGxpbmcgd2l0aCBh
Y2Nlc3NpYmlsaXR5IGlzIHByb3ZpZGVkLiBbM10KPiBbMV06IGh0dHBzOi8vd3d3LmFyY2hsaW51
eC5vcmcvbmV3cy9hY2Nlc3NpYmxlLWluc3RhbGxhdGlvbi1tZWRpdW0vCj4gWzJdOiBodHRwczov
L3d3dy5hcmNobGludXgub3JnL2Rvd25sb2FkLwo+IFszXTogaHR0cHM6Ly93aWtpLmFyY2hsaW51
eC5vcmcvaW5kZXgucGhwL0luc3RhbGxfQXJjaF9MaW51eF93aXRoX2FjY2Vzc2liaWxpdHlfb3B0
aW9ucwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3
dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

