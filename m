Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 057F049EECB
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 00:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643325813;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1v+xVSaR8xkLZbRkdOZgkXjT/eOi7uYlM4kjTNAF3kg=;
	b=EgR7Er2x4mba30/q7urLozN7w2bIVOQRm1CgNtSAgK/QY1GmlOZn6q3KqNnXI/lJ/UvdTf
	yyR16j7f2xuimLotWI42np5NXswNNXD57OJHHzx4oJlgDeW4SVUzqzfFymM9dAUNC7iQUI
	5MnuJ4Bq9szdiESMcCiFyc2Xb26+/J0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-361-esddYFNzP6m_ny-8psn21A-1; Thu, 27 Jan 2022 18:23:29 -0500
X-MC-Unique: esddYFNzP6m_ny-8psn21A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54F70104;
	Thu, 27 Jan 2022 23:23:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B9DFB6C18D;
	Thu, 27 Jan 2022 23:23:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 222F51809CB8;
	Thu, 27 Jan 2022 23:23:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20RNN6fS021959 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 18:23:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3563840CFD39; Thu, 27 Jan 2022 23:23:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3161D40CFD02
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 23:23:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1C78E80120C
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 23:23:06 +0000 (UTC)
Received: from st43p00im-zteg10073501.me.com (st43p00im-zteg10073501.me.com
	[17.58.63.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-593-M4YQi5NXMseOqU2bRuG5bg-1; Thu, 27 Jan 2022 18:23:04 -0500
X-MC-Unique: M4YQi5NXMseOqU2bRuG5bg-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10073501.me.com (Postfix) with ESMTPS id AB4AD360924
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 23:23:03 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
Message-Id: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
Date: Thu, 27 Jan 2022 18:22:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.816
	definitions=2022-01-27_06:2022-01-27,
	2022-01-27 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=611 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2201270131
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20RNN6fS021959
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBMaXN0LApUaGlzIGlzIG15IHRoaXJkIGF0dGVtcHQgYXQgRmVkb3JhLgpJIHNldHVwIGEg
Vk0gb24gbXkgTWFjIHRvIHRyeSAKRmVkb3JhLU1BVEVfQ29tcGl6LUxpdmUteDg2XzY0LTM1LTEu
Mi5pc28uCkkgcHJlc3NlZCBhbHQrRjIsIHR5cGVkIG9yY2EgYW5kIGVudGVyLgpJIGdldCBubyBz
cGVlY2guCldoYXQgY2FuIGJlIHdyb25nPwpUaGUgc2FtZSB0aGluZyBoYXBwZW5lZCB3aXRoIEZl
ZG9yYSBXb3Jrc3RhdGlvbiAzNS4KSeKAmW0gYWJvdXQgdG8gZ2l2ZSB1cCBhbmQgc3RpY2sgd2l0
aCBBY2Nlc3NpYmxlIENvY29udXQgYW5kIExpbnV4IE1pbnQgMjAuMDMuClRoZXkgYm90aCB3b3Jr
IG91dCBvZiB0aGUgYm94IHdpdGggbm8gcHJvYmxlbXMuClRoYW5rcywKUm9iCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

