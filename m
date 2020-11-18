Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1B6002B8293
	for <lists+blinux-list@lfdr.de>; Wed, 18 Nov 2020 18:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605719200;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OR2OeM7+Vz0bHG6iw5iPOiwYTvvMjH//WpTvAYgBeso=;
	b=epIEXoqxyLggEsyUygOXIOGjkQQm4nwv8OOJu/zPQdzFa5Lkk/yuXu/TlpGuXfbaeFwTf6
	9Xij/EGjZZd7QNVIdVs2B2BXDJOJMS5QwaBZOg/3xvZvLkhel33hrnUWmdpbUWgQBiJdM0
	TqCs4OpQ1vs9bt8WD9Mw4G+mMqO/TOA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-YRkICWzDNICrvnpK-ZV7rQ-1; Wed, 18 Nov 2020 12:06:36 -0500
X-MC-Unique: YRkICWzDNICrvnpK-ZV7rQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 67CF96D5BA;
	Wed, 18 Nov 2020 17:06:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA6D55FC36;
	Wed, 18 Nov 2020 17:06:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4784C5810A;
	Wed, 18 Nov 2020 17:06:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AIH63D1000654 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 18 Nov 2020 12:06:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C291A2166B44; Wed, 18 Nov 2020 17:06:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BCACF2166BA2
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:06:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 797DF811E84
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:06:01 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-428-HmKs2vDPOOW9sPewIHSiiA-1; Wed, 18 Nov 2020 12:05:57 -0500
X-MC-Unique: HmKs2vDPOOW9sPewIHSiiA-1
X-SimpleLogin-Client-IP: 127.0.0.1
Received: from [172.17.0.6] (localhost [127.0.0.1])
	by mx1.simplelogin.co (Postfix) with ESMTP id C87A43F170
	for <blinux-list@redhat.com>; Wed, 18 Nov 2020 17:05:55 +0000 (UTC)
Subject: commands for installing all the English female RH voices?
MIME-Version: 1.0
To: blinux-list@redhat.com
Message-ID: <160571915570.6.16599038312638547320.1828353@slmail.me>
Date: Wed, 18 Nov 2020 17:05:55 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-Mailbox-ID: 9379
X-SimpleLogin-EmailLog-ID: 1828353
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I have Linux Mint MATE. I successfully installed RHVoice, but it only has the default US English male voice.
i want to install all of the English female voices. i think there's 2 or 3 of them. But on the Git Hub page, it looks like the commands for installing the English female voices are in a different language.
sudo apt-get install and all that is fine
But then below that when it shows commands for installing individual voices ESpeak is reading that part in a different language and my braille display just shows symbols.
Do any of you have the English commands for installing each of the female English voices?
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

