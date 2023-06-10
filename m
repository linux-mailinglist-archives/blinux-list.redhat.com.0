Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C75A72AB3D
	for <lists+blinux-list@lfdr.de>; Sat, 10 Jun 2023 13:49:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686397752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XU3WExwyE80nH3OxbXiBgCx6GSELUqCRaVg/rcSUyqU=;
	b=BdBrQarYlH0SDEtUO4uxMl/P1MtHMWvDCxupKzsABLy8WvpZpSgs1cKq+6aO83SRricSu9
	cArf7hDiO27lJY1WKO7KAlWTATdzrTkiD4lLq8OEEBWEin5sXMuSlNAOgRZ1tkSfXy8s8Y
	uO5vU0DA5rz0/4CbHYbdkRJ7xx6KWig=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-249-E_Gw-YEYNbm9gYfADmjBiA-1; Sat, 10 Jun 2023 07:49:09 -0400
X-MC-Unique: E_Gw-YEYNbm9gYfADmjBiA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 704C93C0F18E;
	Sat, 10 Jun 2023 11:49:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8256A40D1B66;
	Sat, 10 Jun 2023 11:49:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D488619451C4;
	Sat, 10 Jun 2023 11:49:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 10 Jun 2023 07:48:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
To: blinux-list@redhat.com
References: <mailman.1788.1686336155.910463.blinux-list@redhat.com>
 <mailman.1748.1686341177.910461.blinux-list@redhat.com>
Subject: Re: Speech-dispatcher seems broken on ArchLinux
In-Reply-To: <mailman.1748.1686341177.910461.blinux-list@redhat.com>
Message-ID: <mailman.72.1686397739.3347374.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"


On 9/6/23 15:37, Linux for blind general discussion wrote:
> I have noticed for some time that speech-dispatcher's ALSA driver 
> experiences issues with either glitchy audio, crashes, or simply not 
> working at all on random machines. The pulseaudio driver seems to work 
> a bit more reliably. Try rebuilding your configurations so that the 
> audio output driver is pulse. That *should* fix things if the driver 
> is indeed the issue.
>
I've been using Speech-Dispatcher reliably with Pipewire under Arch 
Linux for quite a while. It is configured to use PulseAudio, but 
Pipewire emulates the PulseAudio client API. For this to work, the 
pipewire-pulse package needs to be installed.

PulseAudio is the default option in /etc/speech-dispatcher/speechd.conf.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

