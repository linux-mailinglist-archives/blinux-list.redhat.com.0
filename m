Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C5D6012F4
	for <lists+blinux-list@lfdr.de>; Mon, 17 Oct 2022 17:49:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666021778;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mgmwxwfsRb8H6AGG+rN1ms63gCkWLEeTb3xqhRCeKBs=;
	b=f5DV6H6ODCyL+i0XYcATGiCXLiBiRxZ2Ad4QqbXAsJFVMUaj8MQQtp39S3vR5OFDcGR00N
	7er64Hn0LHYXJzTjcMzkGAzmLNkgeSJqk28IJ6O6JzEF17u+NUxZ1CTmA/7XpuLjwjsaNG
	50K92DAvYLp6KluZlvizhOXUA/SIHJ4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-IKIPhpqrOeOy9I_l22NKzw-1; Mon, 17 Oct 2022 11:49:37 -0400
X-MC-Unique: IKIPhpqrOeOy9I_l22NKzw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06D7D38164D1;
	Mon, 17 Oct 2022 15:49:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6809CC15BB3;
	Mon, 17 Oct 2022 15:49:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0740D19465A2;
	Mon, 17 Oct 2022 15:49:29 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 17 Oct 2022 17:47:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: How to start Espeakup before login
Message-ID: <mailman.715.1666021768.3011.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,


I decided to switch to multi-user.target with systemctl. But one problem 
I am getting is that before logging in, I do not get speech from 
espeakup. So I had to resort to using the graphical.target. Then after 
logged in, I can then switch to a tty window and Espeakup will speak 
only because I am logged in in graphical.target.


Any help on where I can set Espeakup to start even before log in, so 
that I can switch to multi-user.target without problem? I am on Arch 
Linux, but I am sure any system using systemd can work just the same.


TIA,


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

