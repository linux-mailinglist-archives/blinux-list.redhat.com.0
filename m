Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 7E8F818C26C
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 22:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584654209;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O5JpqFAgvGPO/xYcTrtFj58yIU9+f4ypMh24UgusoKQ=;
	b=BeAlSiieZNzIdsrfe0vdyVVqmm4Wk3ArCEhRMphO1io/SorDQuY0iDvvk2GKeCBTB3du1v
	5AqG81HMttSr67fnAZ4c89EIbvLYLFqlq/wu5A40fTyiMiebG7HG4XpoFV8YMxPv621ZE1
	HjXbrxxBAO0fSfrmcUY6AtU3O2uno+Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-ssBsnkCQPZWWHEu_3ob5hw-1; Thu, 19 Mar 2020 17:43:26 -0400
X-MC-Unique: ssBsnkCQPZWWHEu_3ob5hw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A62B6800D50;
	Thu, 19 Mar 2020 21:43:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1676060BE1;
	Thu, 19 Mar 2020 21:43:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9DCD087016;
	Thu, 19 Mar 2020 21:43:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JLh8gl024855 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 17:43:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6BF9A16C8FF; Thu, 19 Mar 2020 21:43:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 683AF1711C6
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 21:43:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 82D1B800260
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 21:43:06 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-146-yA8xJP3yNTyPSJglwjzMpA-1; Thu, 19 Mar 2020 17:42:58 -0400
X-MC-Unique: yA8xJP3yNTyPSJglwjzMpA-1
Received: by mail-qt1-f172.google.com with SMTP id d12so841965qtj.4
	for <Blinux-list@redhat.com>; Thu, 19 Mar 2020 14:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=gdhT+EhyU4uVZsNgSJvdXGaQVT8R/s3T6KPKN0oRo2o=;
	b=E7t5i74/4sefLeFluOFQOPsWVpSEysoVeNAX+BTyHeL6L+8D+c1kxAAJgyR8ajYXbe
	pwYMym7Oya0lD9oCjgwU25xknM3NWXSd7Cs2hrkmSjumNNOK+1HhUy3IMB7elhuyuuc2
	VBN8D29NtbTKK+eDrRszZI9typjcELZW7pH+ZS0PrE++wi3egbQBs4Kr6+rxCvGuSvOH
	q/qJyUoRWS40r50YhdlX1cznGIbS/R658TWITTMjdPEpSFKrxGrvoD8/cvxJv/6KgQ74
	p/3sbzP1Ow7qerSPYubcT8sGQ9GrpOOsjH0Le17NkG2DzZN1WGiPbSWM727HfdcM75C2
	Fc9w==
X-Gm-Message-State: ANhLgQ1ydhVlV9lQ72ZetcBaiYlOPGt4juOKqcRHA7QvQi6M8+rrqKN7
	XxLinbKCB6NrWmQ2GhboykUyaoKR
X-Google-Smtp-Source: ADFU+vvZ5iXlukmNCU8DOc10+KWZ8azV+YFr3oFA1QTTbCDwOZ9uTf4oQdOFcZvRYN+cQPq33hjVvw==
X-Received: by 2002:ac8:5388:: with SMTP id x8mr37449qtp.21.1584654178094;
	Thu, 19 Mar 2020 14:42:58 -0700 (PDT)
Received: from ?IPv6:2603:9002:306:2200:29f1:1a0:541a:6d62?
	([2603:9002:306:2200:29f1:1a0:541a:6d62])
	by smtp.gmail.com with ESMTPSA id
	y60sm2620183qtd.32.2020.03.19.14.42.57 for <Blinux-list@redhat.com>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Mar 2020 14:42:57 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Subject: Brltty on login screen under Fedora
Message-Id: <287181C6-AB79-44E9-8656-11478A7C8595@gmail.com>
Date: Thu, 19 Mar 2020 16:42:56 -0500
To: Blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02JLh8gl024855
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
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In ubuntu I put my brltty startup command in /etc/rc.local. the geeks tell me
rc.local is deprecated, but it works for me. If fedora has somethinqg similr put your startup
brltty command in there.

--Brian Tew


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

