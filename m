Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 926C34C232E
	for <lists+blinux-list@lfdr.de>; Thu, 24 Feb 2022 06:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645678956;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bD0zvJIqhbcZ9R45Z93vSUlL8z7+6xjOFJb3lnjBFqo=;
	b=RKUzvmLPQnPIsHaK2BQF4lIEQi3FQycHHBQdr5pRlz9suiJK5NmoRreNC9tmkugzQEcZn3
	KUEb0eh0QVJU4LwAD1vTcfwfZoJ3sNOo6Ad18MpXJfovt4bKjCpQxt6tPfMWuROrIOVyLt
	NisvoE3uCZGchTF8VUb/BSYl1988Gt0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-325-7etTBHJ5MkyrZUYrfxXyCA-1; Thu, 24 Feb 2022 00:02:33 -0500
X-MC-Unique: 7etTBHJ5MkyrZUYrfxXyCA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B10EC80D6A7;
	Thu, 24 Feb 2022 05:02:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 528D4101F6D4;
	Thu, 24 Feb 2022 05:02:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7AFC518095C9;
	Thu, 24 Feb 2022 05:02:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21O50mup029702 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 24 Feb 2022 00:00:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9B1E1401DBC; Thu, 24 Feb 2022 05:00:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96B9F5361FF
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 05:00:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6F3872B16861
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 05:00:48 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-33-OqrU_ci2PC2OK0Zsyf6RZw-1; Wed, 23 Feb 2022 23:46:56 -0500
X-MC-Unique: OqrU_ci2PC2OK0Zsyf6RZw-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx005
	[212.227.17.184]) with ESMTPSA (Nemesis) id 1Mg6e4-1nsaUF0Ggo-00heSO
	for <blinux-list@redhat.com>; Thu, 24 Feb 2022 05:46:53 +0100
Message-ID: <20220224.044754.813.10@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: OT: Telegram and bitlbee Question
Date: Wed, 23 Feb 2022 22:47:54 -0600
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:E+0es4BtMbYvIzoKiGSRVY4klZFAa1dsm6FLh6w10jO3m6Ll5MA
	+DUXD4b3gayspr0VUS1Qq0bWTcOAhmc0VDnLTt7ptvOgVW5whLYJ0K4AJUgGzE4j9XZaP2I
	rrohXYqS2sWkRvLoG+6TSLqaHB7F6w3RmtKvRTiLjtBGzSvYRaIIgSxqZOZGQNotAlKw61X
	61Gh6qTDt8ui8F/xeakMQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:/CHxpY4xmk8=:wQv7bMS8HdSllGXXOxnqGx
	dyM043DoeboP6TeweawwhcWuJhqRD5pXH/hyuCVjyChBV3J4rVe+Jk5F2bq6IopKdW9ZXrXf8
	EKYB5TFHZ+9gSip1/jkLitAxihO1Uvof/mZAisM14a7YVM8jEJLdeTFEUvzlrw6LAdDOAVTxN
	tzUl9AhaHCEZJEXKcuufvCajCmtUJDdb4yl4umTOwX8NkM7NljGfQGN36MiHzJlC0BFYhoeea
	Tad4sT104Mym5YmbK3HnRfyDAOwPkj8Wt9cwfNwOEKewwRdkCdqteSTe9Goxq926NXD5eEgVo
	KrEVlfa5GbSeICSgZu3OfL81cZ2rn40mMb5noEVoO0Ogy2VMa7JlSChkEGZm4nu9OZaZyG/C8
	VB+cXhnfcygVTwb40UzilcvYmyM+QhUHh3lf8FLGlilSKCBxI0UHMxWtBGOsBHw7nYR8hoEDI
	/8bCe91ITWNGGytKsWHuiKaeffUb/euUufr6dUdqjvqHgOk9GyqQ4lo5qVhiFVZxXVgBNsUeK
	22hg9PAJgCVP2UBI0qcuBvseEQaFIqbM+RxxycdXmzOnNPBCb5PzThETGUPeHexjgmyocm3sA
	QpKXWifuBzmfsw6czSWjrtt3cs73EP86wJx8846DgPa+XhMpHqM86BhmJP0ZjVGlZzlDX5cMn
	fJ/K7itCfC3oGvmz+Mc0GJ6epXsCm0TzzrA8hajuJBm9/gE8rmmg4QwmwnscqCQChchO1q6gP
	ozenwEs/R9q7sJKW4AsrRh6MEVe7BJXImVqyCCOXodEhfWeI77hdB7x8qpv0zJwxnaYLJF5Rc
	zP7qWB2WQMQyX+lNDj6XLZnH5FH79bKtTC7vybnRlymfm0f8qiZ2HEE8P8nz7FCRccKQTW9iH
	qOcaH2LbkDdVj6MueqzI4Mzl5/CurhK8dTeEPURwShX7G4kS04403P8WHD5bhLtPdNgA+n8KN
	XodSjYrCZCnr2p/XJcPiAzJQ3sTezih3cOQeDuGAHGRBQ0y3dgNSRKKKtDOvU9zgfLnkH/VlL
	G64b4Sn3vjpVnVVnNF8TyiUpSPlTZYAlJTzb4wyCB2NTtm6CojLl3/dFAT84PBwwnuuHEIGWl
	lcwOuzoze4ngrA=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21O50mup029702
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I use telegram-tdlib with bitlbee, and i'm not really sure where to ask this.

I have a contact, but when I add her to the contact list via my phone app, and then try to msg her in bitlbee, it says, user not found. And my messages show up in the control channel. This only happens with this particular contact. Is there a setting somewhere on one of our devices that we can change?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

