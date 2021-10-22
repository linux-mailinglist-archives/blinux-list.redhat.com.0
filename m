Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF41437C1A
	for <lists+blinux-list@lfdr.de>; Fri, 22 Oct 2021 19:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634924461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ufQYl2goNpwd8k0yZ9CAhwh2z8zm75YHOiIaE0+mlcw=;
	b=Qm67hc/ZucGGg5K3imLmXuV7ANQu3TqmpZmbvtEi9v9r5aE3PkzzGSi9glguzCkTqIovEN
	k+ru9PuHDlQHPiXvdqccZLNLFpWrTo6lU1K4URpla01OShacldHmb8+Ov+Nwks4PrKH40K
	m+H/2YJkYCbAhLl58J7osOSNzfQg8Ww=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-oSNMPpcbPbGr09PqISN_fA-1; Fri, 22 Oct 2021 13:40:57 -0400
X-MC-Unique: oSNMPpcbPbGr09PqISN_fA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E797E10A8E00;
	Fri, 22 Oct 2021 17:40:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E616C5D9DE;
	Fri, 22 Oct 2021 17:40:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1B5B4EA2A;
	Fri, 22 Oct 2021 17:40:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19MHbqLB003248 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Oct 2021 13:37:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DCA722166B2D; Fri, 22 Oct 2021 17:37:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D718E2166B25
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 17:37:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 063A0811E76
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 17:37:50 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-114-LkzSAQlYPsimQAAx7h0HwA-1; Fri, 22 Oct 2021 13:37:48 -0400
X-MC-Unique: LkzSAQlYPsimQAAx7h0HwA-1
Received: by mail-qt1-f182.google.com with SMTP id v17so4226612qtp.1
	for <blinux-list@redhat.com>; Fri, 22 Oct 2021 10:37:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=1SFIArMAOB2ngfGVoTR03RhqMZCYhTKbfkzJRaOFES8=;
	b=TXvfSv9SErBn8/1WVDPsnzh5fc/jQGM0+KHY/Af1d681UNdNFm+qS8Eq9x6BZFAzdI
	RHgJQC8T/dCmiMy5kG2KQen/+Ev+DQShV91Q7TFIWPlJrt3RqonDmZqbKfJ2qIHixYWh
	N81zTEfmtsvwHztcILJA993yd+jIH5R1kbGiqbGC7SM+CU5cFANoHy4xCXylWboPOkYL
	kG/5pK7QxIajTOJuxbzZb5pYr3xnFyKGD3nir+YJiWitr5tEXRX/1gWtY8va1ST8g5Jv
	LapAOcHet24xJgzKxesBxvPLSv0KzrfV5W3OZBVM9uExRfVqpvyNyp7+edehm9dN9w91
	E/IQ==
X-Gm-Message-State: AOAM531CjxJEx3Cfiur8H1aHbvdvnfYwIp6SZ3T6kVMDzmpPWydV05z3
	y4uLobGYJ9trc2sMedgfyoO5I+m9aUWczA==
X-Google-Smtp-Source: ABdhPJwSFb6/HMjGmzkwDMO9WXrMZ1ioHAnfZNJ2GLKrbsezpu/V1edQiux7A1b1x1nvaXaO3inO7w==
X-Received: by 2002:a05:622a:1807:: with SMTP id
	t7mr1474751qtc.140.1634924267667; 
	Fri, 22 Oct 2021 10:37:47 -0700 (PDT)
Received: from smtpclient.apple ([2601:c8:300:2f6:1863:eded:405:cb34])
	by smtp.gmail.com with ESMTPSA id
	s189sm4438988qka.100.2021.10.22.10.37.47 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Oct 2021 10:37:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: New user looking for info on Voxin
Message-Id: <9B1DAAA1-347A-4CE6-A606-F1E5EDEAC372@gmail.com>
Date: Fri, 22 Oct 2021 13:37:46 -0400
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 19MHbqLB003248
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBMaXN0LApJIGp1c3Qgc3RhcnRlZCBjaGVja2luZyBvdXQgTGludXguCknigJltIHVzaW5n
IHRoZSBBY2Nlc3NpYmxlIENvY29udXQgdmVyc2lvbi4KSXRzIGJlZW4gb3ZlciAxNSB5ZWFycyBz
aW5jZSBJIHRyaWVkIExpbnV4LgpNeSBxdWVzdGlvbiBpcywgSXMgdGhlcmUgYSBkZW1vIG9mIFZv
eGluPyBBbmQgd2hlcmUgaXMgdGhlIGJlc3QgcGxhY2UgdG8gZ2V0IGl0IG90aGVyIHRoYW4gdGhl
IFZveGluIHdlYnNpdGU/ClRoYW5rcywKUm9iCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

