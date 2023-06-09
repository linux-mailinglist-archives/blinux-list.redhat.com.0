Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E15FD72A282
	for <lists+blinux-list@lfdr.de>; Fri,  9 Jun 2023 20:42:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686336171;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1ucVJ9uXtgYE6YNJSPcSrsQZ4dt56BS4jASeUPTb65k=;
	b=exYpyyXXSg5XaLcICbtciXcK0zYyNhlpb75NB1CfWB+UJICz9osf4e+NOBAmiHObP1edKw
	9o3VLeA89BkXtKPpCZ0BwFaAhcgNdaqIh+9tWxe7m0Z7aC9z7cuXpnLlSV2Qev1QsIxCsv
	KWY4ZaQ6qbVAVHlKsMF3nkiGeAYmmNU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-646-fkCJp4JQNYmOT2Ed3KZY3w-1; Fri, 09 Jun 2023 14:42:48 -0400
X-MC-Unique: fkCJp4JQNYmOT2Ed3KZY3w-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 38A8C2814243;
	Fri,  9 Jun 2023 18:42:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6ECDF40D1B66;
	Fri,  9 Jun 2023 18:42:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B797D19451C5;
	Fri,  9 Jun 2023 18:42:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 9 Jun 2023 15:42:18 -0300
MIME-Version: 1.0
To: blinux-list@redhat.com
Subject: Speech-dispatcher seems broken on ArchLinux
Message-ID: <mailman.1788.1686336155.910463.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: pt-BR
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi, I installed fenrir on my new ArchLinux, then set it to start using 
the speech driver and started it through the systemd service. It either 
didn't speak anything or froze the system alltogether.

then I decided to try starting x, which I had just installed along with 
the i3-wm and orca. It didn't speak anything as well, nor it left any 
error in xorg.log.

then I suspected of speech-dispatcher. Spd-say didn't say anything nor 
returned me to the prompt; I had to terminate it with control-c. It 
happened as both normal user and root. then I ran spd-conf to create a 
new configuration, one time as the normal user and another as root. In 
both ocasions, I chose espeak-ng as the default output module, and alsa 
as the audio output method. In both ocasions, spd-conf was unable to say 
anything with spd-say, nor it was able to start or restart 
speech-dispatcher. It said it was already running, then asked to kill 
the process, but was unable to locate any running process to kill.

the only difference between running spd-conf as normal user and as root 
is that, as the normal user, it was unable to play a wave sound file 
through aplay, whereas it plaied successfully as root. But 
speech-dispatcher isn't functioning properly, neither as root nor as user.

Lastly, I am unable to start speech-dispatcher with the -d option, which 
would give a debug file. It says it is already running.

Any help please?
Cleverson

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

