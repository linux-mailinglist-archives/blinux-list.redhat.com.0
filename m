Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B87415B5F79
	for <lists+blinux-list@lfdr.de>; Mon, 12 Sep 2022 19:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1663004510;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ARonRg638awaJ34La+GdAj+PKvpMP9YxkTHu2O8DYKQ=;
	b=LYbsCwLV4ppj8No7BJYzjUHME6VJZm83mNinv0M4JOkL2VyGTqBig2FXC4bQ+z0sbj5iiZ
	CbcmP/xxwvD5+ajbu5vMN1TkH7ify+ifnJtQSIJXkmnin0lsMP21aFcBZ1iD/wvSkjkCjF
	XOvCaRi67hVCYFxziZaG2hhKfhIEX7g=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-QNZfdIiwMp2tNmRiT7f3VA-1; Mon, 12 Sep 2022 13:41:47 -0400
X-MC-Unique: QNZfdIiwMp2tNmRiT7f3VA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2A5091C13945;
	Mon, 12 Sep 2022 17:41:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E8E5517584;
	Mon, 12 Sep 2022 17:41:41 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 523241946A48;
	Mon, 12 Sep 2022 17:41:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 12 Sep 2022 18:41:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Qtile is kind of nice
Message-ID: <mailman.8007.1663004501.10507.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Anyone used qtile recently? I'm playing around with it and really, 
really like what it offers.


It's a Python based WM that runs out of the box, supports Orca (with 
Strychnine at least) via .xinitrc and is super, super good and lightweight.

I can get the hang of it nice and easily, and I've yet to dive in to see 
how far I can take it tweak wise, the default, basic config, works fine 
for what I need right now, the shortcuts mostly make sense with how I do 
things. Mod4+enter for a terminal, mod4+R to run a program, and so 
forth, it uses $mod4+ K and L to switch windows and it's a simple 
config.py to change things up

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

