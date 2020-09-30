Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E7B7027F0A6
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 19:38:10 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601487489;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=n/Pgno4QN/R09twVRVCZu9d7xgyBkrCFBT/UPB6Dv/w=;
	b=Bd0OW7fhHbcjqmZUOBwY6owvh9nKoWjm5HRV2LygrcUhYpQjRmlMS2mhrwu97E7YyWU0iz
	iAZiUWA88ZgNezAy8FSzoNXtPN6YzW636lW7bz9bpW4/rxnutfhiy4wxOj0H/tsGlEBcid
	oXpOiVIYCU1tw6vROxpVnoK2zSk5tNw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-504-DGnRGpi0NVGPTsi4BF6Sjg-1; Wed, 30 Sep 2020 13:38:07 -0400
X-MC-Unique: DGnRGpi0NVGPTsi4BF6Sjg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B6CDD1074660;
	Wed, 30 Sep 2020 17:38:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35FBB7883E;
	Wed, 30 Sep 2020 17:38:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 15D83183D021;
	Wed, 30 Sep 2020 17:38:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UHbvqD018214 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 13:37:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8F740EAF84; Wed, 30 Sep 2020 17:37:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A438D016B
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:37:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 535C780121D
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:37:55 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.30.85]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-87-EJ-ThaOWMZilQvNbpb1FBQ-1; Wed, 30 Sep 2020 13:37:52 -0400
X-MC-Unique: EJ-ThaOWMZilQvNbpb1FBQ-1
Received: from cm3.websitewelcome.com (unknown [108.167.139.23])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 24CC42009A778
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 12:12:54 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id NfewkJb01KgzSNfewkhsrh; Wed, 30 Sep 2020 12:12:54 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:34115 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kNfev-0027Ez-Qw
	for blinux-list@redhat.com; Wed, 30 Sep 2020 12:12:53 -0500
Date: Wed, 30 Sep 2020 12:12:51 -0500
To: blinux-list@redhat.com
Subject: Re: Console screenreaders
Message-ID: <20200930121251.7d6b8c35@bigbox.attlocal.net>
In-Reply-To: <5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
	<5b699b56-2241-b1ef-18c3-3d05614e9b8a@slint.fr>
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
X-Exim-ID: 1kNfev-0027Ez-Qw
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:34115
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08UHbvqD018214
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgbXkgZ28tdG8sIEknbGwgYWRkICJ5YXNyIiB0byB0aGUgbGlzdCAodGhvdWdoIEkndmUgYmVl
biBtZWFuaW5nIHRvCmNoZWNrIG91dCBmZW5yaXIpLgoKLXRpbQoKT24gU2VwdGVtYmVyIDMwLCAy
MDIwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IExlIDMwLzA5
LzIwMjAgw6AgMTg6NDksIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNy
aXTCoDoKPiA+IFNvLi4uLndoYXQncyB0aGUgY29uc2Vuc3VzIG9uIGNvbnNvbGUgc2NyZWVucmFk
ZXJzPyBJJ3ZlIGEgZmV3Cj4gPiB0aGluZ3MgSSB3YW50IHRvIGRvIGluIGEgVFRZLCBzbyB3aGF0
J3MgdGhlIGdlbmVyYWwgcmVjb21tZW5kZWQKPiA+IFRUWSBzY3JlZW5yZWFkZXIsIG9yIGNvbnNv
bGUgb25lPyAgCj4gCj4gVGhlcmUgaXMgbm8gY29uc2Vuc3VzLi4uIEtub3duIHRvIG1lIGFyZSBz
cGVha3VwL2VzcGVha3VwLAo+IHNwZWVjaGQtZWwsIGZlbnJpciwgU0JMIChpbml0aWFsbHkgZnJv
bSBTdVNlKS4gQXMgZmFyIGFzIEkga25vdyBhbGwKPiB3b3JrIG9uIGEgY29uc29sZSwgZmVucmly
IGFsc28gaW4gYSB0dHkuIC0tLQo+IERpZGllciBTcGFpZXIKPiBTbGludCBtYWludGFpbmVyCj4g
aHR0cHM6Ly9zbGludC5mcgo+IAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

