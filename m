Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 49B91300E6A
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jan 2021 22:01:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611349309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iGL99IPTPEFqs6DAatD1euorihSwy1Ys2y7FEtPW88I=;
	b=XH0HMxeZUNBaaSpmzfXtGljMOj3aw+YfaQ4yTS28MeWc/9l+k7pFxQTnzkJoFowjAhaphX
	QpPsCRZoOaMrinyms8QAmfpeRp21cwytaut9C9zBiuAioMo/PDl5WfRf003rm3uZH/SB9G
	YOmgCVDdkOS3zwU3imT2WdC/MLIAEHM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-j7FcpyiqM7GUsx3mBfFQCg-1; Fri, 22 Jan 2021 16:01:43 -0500
X-MC-Unique: j7FcpyiqM7GUsx3mBfFQCg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9999D8066E5;
	Fri, 22 Jan 2021 21:01:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 556CD6EF40;
	Fri, 22 Jan 2021 21:01:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 137F84A7C6;
	Fri, 22 Jan 2021 21:01:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10ML1UDB004933 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Jan 2021 16:01:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D3C692166B33; Fri, 22 Jan 2021 21:01:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDAB42166B32
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 21:01:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9016B18A01A0
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 21:01:28 +0000 (UTC)
Received: from gateway9.unifiedlayer.com (gateway9.unifiedlayer.com
	[74.220.193.210]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-186-PUrmFrJDNpu0oXXKYVBqiw-1; Fri, 22 Jan 2021 16:01:25 -0500
X-MC-Unique: PUrmFrJDNpu0oXXKYVBqiw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway9.unifiedlayer.com (Postfix) with ESMTP id 20E8D20118AF9
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 14:12:18 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 32n3l6alQaJ2332n4l7mZV; Fri, 22 Jan 2021 14:12:18 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:29572 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1l32n3-001g6y-P4
	for blinux-list@redhat.com; Fri, 22 Jan 2021 14:12:17 -0600
Date: Fri, 22 Jan 2021 14:12:15 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: renaming many files
Message-ID: <20210122141215.51f2cd1b@bigbox.attlocal.net>
In-Reply-To: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
References: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1l32n3-001g6y-P4
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:29572
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 10ML1UDB004933
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGltIGhlcmUuICBJZiB5b3UgaGF2ZSB0aGUgInJlbmFtZSIgcGFja2FnZSBpbnN0YWxsZWQKCiAg
YXB0LWdldCBpbnN0YWxsIHJlbmFtZQoKaXQncyBhcyBlYXN5IGFzCgogIHJlbmFtZSAncy9ecmVu
ZXdhbCB0YWxrIC8vJyAicmVuZXdhbCB0YWxrICIqCgooaXQgaGFzIGEgbG90IG1vcmUgcG93ZXIg
dW5kZXIgdGhlIGhvb2QsIGJlaW5nIGFibGUgdG8gdGFwIHRoZSBmdWxsCnBvd2VyIG9mIHBlcmwg
aW4gaG93IHRoZSBmaWxlbmFtZSBpcyBtb2RpZmllZCwgYnV0IHN0cmlwcGluZyBvZmYgYW4KaW5p
dGlhbCBwcmVmaXggaXMgYW4gZWFzeSB1c2UtY2FzZSkKCklmIHlvdSBkb24ndCwgeW91IGNhbiB1
c2Ugc2hlbGwgbW9kaWZpZXJzIGluIGEgZm9yLWxvb3AKCiAgZm9yIGYgaW4gcmVuZXdhbCogOyBk
byBtdiAtdmkgIiRmIiAiJHtmI3JlbmV3YWwgdGFsayB9IiA7IGRvbmUKCkhvcGUgdGhpcyBoZWxw
cywKCi1UaW0KCk9uIEphbnVhcnkgMjIsIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gd3JvdGU6Cj4gSSBoYXZlIG1hbnkgZmlsZXMgaW4gb25lIGRpcmVjdG9yeSB3aGlj
aCBoYXZlIHRoZSBzYW1lIHR3byB3b3JkcyBpbgo+IHRoZSBiZWdpbm5pbmcgb2YgdGhlIG5hbWUu
IHJlbmV3YWwgdGFsayAwMSBlYXRpbmcgYmV0dGVyCj4gcmVuZXdhbCB0YWxrIDAyIGV4ZXJjaXNl
Cj4gYW5kIHNvIG9uLgo+IFdpdGggdGhlIGNvbW1hbmQgbGluZSwgaXMgdGhlcmUgYSB3YXkgb2Yg
Z2V0dGluZyByaWQgb2Yg4oCYcmVuZXdhbAo+IHRhbGvigJkgZm9yIGFsbCBmaWxlcyBhbmQga2Vl
cGluZyB0aGUgb3RoZXIgd29yZHMgaW4gdGhlaXIgbmFtZXM/Cj4gCj4gCj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

