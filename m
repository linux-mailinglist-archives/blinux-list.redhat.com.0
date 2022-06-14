Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A7E54B44F
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jun 2022 17:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655219754;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WsMsklWZWQRxIL6ZLklZfFDndnLXsCfW+nRAf3nUvyI=;
	b=A/nO+TNa8wcYGFh/bpJ0UGrYDC8xfImLB3F1jhUlyXKGa1QYmYyPMGT3OyLwE2iAEQttze
	dEx9Z3MGQZxX6JP/Rh9F53OQBZ9OdPvh5GflTQi0BSraTuOuQ9Kkx7RG5Cl1N5L6iEthEP
	sX1fLc1fEMrVsX0g0u6Mc9ggSUt6RMI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-270-7KISyU_tN8-Az3lS3e8EPQ-1; Tue, 14 Jun 2022 11:15:53 -0400
X-MC-Unique: 7KISyU_tN8-Az3lS3e8EPQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2E53801756;
	Tue, 14 Jun 2022 15:15:51 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 64DDE1121319;
	Tue, 14 Jun 2022 15:15:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id ED2461947067;
	Tue, 14 Jun 2022 15:15:43 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
Date: Tue, 14 Jun 2022 15:15:35 +0000
Subject: Fixing/Converting/Down mixing 5.1 AC3 audio.
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.24268.1655219742.111210.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so I have some AC3 audio in 5.1 surround sound that I extracted
from some .mkv files using mkvextract.

They play fine on my desktop using gst123, but when I attempt to play
them on my portable media player(a Blaze ET, which can play most audio
files I throw at it), I get what sounds like extremely slowed down
audio as if it's playing at 1/16 speed or something.

I'm not sure if the issue is some irregularity in the audio files, the
Blaze not knowing how to handle a 5.1 source, or the specific version
of AC3, though I'm leaning towards the second or third since some
stereo Ac3s I extracted from a different set of mkv files played fine
on my Blaze and gst123 needs the ugly set of gstreamer plugins to play
the problem files, but played the stereo AC3s just fine without the
ugly plugins.

So, anyone have any idea how to identify what's causing these files to
not play properly on my Blaze and how to fix it? I need a command line
solution.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

