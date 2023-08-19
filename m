Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A95ED78163E
	for <lists+blinux-list@lfdr.de>; Sat, 19 Aug 2023 03:04:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692407087;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=29EyPZbP7svQ4ApO6I7g04wqh3+FecLFPG3+Nq+T2LM=;
	b=G3uwK67y8AY90UI0dy1vtnqfdEJxBwVxqRKs/HpXp3bexxDEYRN4xQOgjo5hHR4G+ouo79
	JlMKXfUEY4q0SOfKZsWF0vv9POcjBpDBbn8Mra+eFkb1EQqCN7nNL6/H/8xYkc52gIFEUm
	/JxHsCqX/TJL7u8P3bxca3i/0yG2Zpo=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-627-G1-KG1BtP2GioD11s12KiQ-1; Fri, 18 Aug 2023 21:04:43 -0400
X-MC-Unique: G1-KG1BtP2GioD11s12KiQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 757D83C0F699;
	Sat, 19 Aug 2023 01:04:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E587D2026D68;
	Sat, 19 Aug 2023 01:04:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2DC33194658F;
	Sat, 19 Aug 2023 01:04:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 18 Aug 2023 22:04:17 -0300
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: How to have Orca in LightDM?
Message-ID: <mailman.1754.1692407072.2238099.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi, according to the Gentoo wiki page for LightDM, it scans and executes 
the contents of ~/xprofile on start, so I've put some accessility 
related variables and the orca command in it, but orca is not being 
brought up; it only comes after login, when Mate starts. How can I have 
speech during login? The content of my ~/xprofile is as follows:

# Accessibility variables
export ACCESSIBILITY_ENABLED=1
export GTK_MODULES=gail:atk-bridge
export GNOME_ACCESSIBILITY=1
export QT_ACCESSIBILITY=1
export QT_LINUX_ACCESSIBILITY_ALWAYS_ON=1
export SAL_USE_VCLPLUGIN=gtk3
orca

Thanks,
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

