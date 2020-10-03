Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5E00B2824FA
	for <lists+blinux-list@lfdr.de>; Sat,  3 Oct 2020 17:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601737860;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f0wcEEZZZ97f+bHSJZ0NwRHRcWFbXAyoLPOouzwFTkA=;
	b=YR1OQF0BFJ1dDBlFFsG8yq1R6nCdQeGi2fhfT2CqHO8jqixkmSqqKCt9rOQb366Dxo1jzy
	xhjxYttTKSTUJw41NAxz77alHT6yWW9bCami17Ha59OD6v2ReXFR+5AfwxCOJFgPSUAz2N
	HpJs4KXVbA+XHK6Fypc75pHWwIZca+8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468--ipz--joMWS5YM3gKAmafQ-1; Sat, 03 Oct 2020 11:10:57 -0400
X-MC-Unique: -ipz--joMWS5YM3gKAmafQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3558C1868401;
	Sat,  3 Oct 2020 15:10:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5ACB760BF4;
	Sat,  3 Oct 2020 15:10:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 174EE44A4A;
	Sat,  3 Oct 2020 15:10:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 093F5B69030463 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 3 Oct 2020 11:05:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8655D200AF70; Sat,  3 Oct 2020 15:05:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 807B4201C0DC
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 15:05:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14B57811E76
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 15:05:08 +0000 (UTC)
Received: from gateway10.unifiedlayer.com (gateway10.unifiedlayer.com
	[69.89.30.85]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-116-IMIuWgGHMwGbOUTpNiKUmw-1; Sat, 03 Oct 2020 11:05:05 -0400
X-MC-Unique: IMIuWgGHMwGbOUTpNiKUmw-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway10.unifiedlayer.com (Postfix) with ESMTP id 93F0920099134
	for <blinux-list@redhat.com>; Sat,  3 Oct 2020 10:05:04 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id Oj5sk0QlmwLnQOj5sk9SU0; Sat, 03 Oct 2020 10:05:04 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:50020 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1kOj5s-001dJ0-AY
	for blinux-list@redhat.com; Sat, 03 Oct 2020 10:05:04 -0500
Date: Sat, 3 Oct 2020 10:05:02 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: diffspeak for making diff output easier for screen-readers
Message-ID: <20201003100502.37ccd317@bigbox.attlocal.net>
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
X-Exim-ID: 1kOj5s-001dJ0-AY
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:50020
X-Source-Auth: tim@thechases.com
X-Email-Count: 3
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

This crossed my feeds today

https://prgmr.com/blog/2020/10/03/diffspeak.html

and it sounded like something that folks here might find useful.  You
pipe the output of diff(1) through it and it makes it easier to
determine indentation when using a screen-reader.  Particularly
useful if working with Python or YAML or Makefiles where leading
whitespace matters.

-tim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

