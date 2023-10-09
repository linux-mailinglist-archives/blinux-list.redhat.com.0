Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3597BE338
	for <lists+blinux-list@lfdr.de>; Mon,  9 Oct 2023 16:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696862547;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B2TkyqCXTSXZJuEy1rjQ1e3xuDqHGk/J+gEnqvgnbDQ=;
	b=EVeNoqtQPdg3c7nQ2L5uD6F+oDNafkSOo0CAOVv2J5zFm7EmWJVyJbEKwnQ+tPFhavuTtp
	tg0kaepHIxgDVEejU9mqpRhhM1MIhqsRYFb0HJ9buPFyoV3ybWX1mzNY7B3dsszOLExAC3
	SUOhzY3IfiflduyNsoPO8lrjrSR2eZU=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-XwI8CcXFPGCxhKGnKp15Kw-1; Mon, 09 Oct 2023 10:42:14 -0400
X-MC-Unique: XwI8CcXFPGCxhKGnKp15Kw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 05DD31C06E12;
	Mon,  9 Oct 2023 14:42:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 76315400F36;
	Mon,  9 Oct 2023 14:42:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 93CED19465B9;
	Mon,  9 Oct 2023 14:42:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.133.1696838107.2052524.blinux-list@redhat.com>
References: <mailman.22.1696701251.2052526.blinux-list@redhat.com>
 <mailman.85.1696772374.2052530.blinux-list@redhat.com>
 <mailman.87.1696776767.2052524.blinux-list@redhat.com>
 <mailman.167.1696819038.2052531.blinux-list@redhat.com>
 <mailman.133.1696838107.2052524.blinux-list@redhat.com>
Date: Mon, 9 Oct 2023 10:42:00 -0400
Subject: Re: Debian with Orca
To: blinux-list@redhat.com
Message-ID: <mailman.248.1696862525.2052526.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As I understand it, pipewire hit maturity early enough to be included
in Debian 12 aka Bookworm, but too late to replace pulse as the
default, and one has to manually install pipewire and configure Debian
to use it instead of pulse(though I suppose its possible the Expert
mode of the Debian Installer provides the option)... I vaguely
remember reading somewhere(perhaps on this mailing list or in a thread
on the Audio Games forum) that Debian plans to make pipewire the
default for Debian 13 aka Trixie, but I have no idea if that's true or
even how to go about confirming or denying it.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

