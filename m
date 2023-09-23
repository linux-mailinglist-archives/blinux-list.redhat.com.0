Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDEC7AC5E0
	for <lists+blinux-list@lfdr.de>; Sun, 24 Sep 2023 01:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695511863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MoMJwa9kgyBwHrSzYIpaUDhYVmlqRfNyCl5k90IRAbo=;
	b=eW5pQGDu4bct9gKfUevAJ1F+MZRPIfXU2ecHR+Cx1cq2z7IgknLoEGmY2cTU90MZgygagJ
	kdEcWWGaaWfsLauY4PnFVF4oOmo3tLCeU/5vwKm40BzMwu1DzyN1uVH4/fg5sNGRSVeuxo
	DqbWrI/ojDipwV7weZ868R4KKbA+1hU=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-379-L6mApwn5N1WeN-eQDhfZww-1; Sat, 23 Sep 2023 19:30:59 -0400
X-MC-Unique: L6mApwn5N1WeN-eQDhfZww-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8987A1C0513D;
	Sat, 23 Sep 2023 23:30:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A07E62156701;
	Sat, 23 Sep 2023 23:30:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D64EE19465BD;
	Sat, 23 Sep 2023 23:30:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Feedback-ID: ia9b947fb:Fastmail
Date: Sat, 23 Sep 2023 16:22:01 -0700 (PDT)
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Can I Translate Audio Among Languages?
MIME-Version: 1.0
Message-ID: <mailman.54.1695511852.4021078.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi All: Ideally, it would be wonderful if I could bringup a stream, lets say in 
Armenian, but have it play it for me in English. Otherwise, if one couldn't do 
that live, I could install some software in Debian-and-feed it a recording. In 
reality, I am a news-junky, but there seem no Armenian news-channels in 
English. You would also think that Google has translation services-and-they 
also own youtube, I should be able to pass it a flag to convert. I hope I've 
explained what I am looking for. There are several Armenian sites with English 
news, but so-far none with English audio or video. Thanks so much in advance
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

