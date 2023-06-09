Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B355672A412
	for <lists+blinux-list@lfdr.de>; Fri,  9 Jun 2023 22:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1686341187;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Iu9ArtMu25NysMEbbi3GC7qZqYSuavwPCvb5gnWJqx8=;
	b=GOGe8SXa7EURP5piw50nvNz6OY7wk3BXYVAqrIMQT5wvMdWdBAE/wxZ6Ss0kdaTSPBFRqt
	9GFYmCtvdUIi201ois+bBnwGMlOcSrpBZX+JnFybEzUxbPkJZ0HfaPL65euMKF+mIHkUXT
	CUrKmWWR8/nuMCP/UalNDe7DE7zmfbY=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-584-BvUl0bDCNLqdHeH_h3xwQA-1; Fri, 09 Jun 2023 16:06:24 -0400
X-MC-Unique: BvUl0bDCNLqdHeH_h3xwQA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E13A53C13505;
	Fri,  9 Jun 2023 20:06:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2CFEE20268C6;
	Fri,  9 Jun 2023 20:06:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8875E19451C5;
	Fri,  9 Jun 2023 20:06:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 9 Jun 2023 15:37:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: Speech-dispatcher seems broken on ArchLinux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.1788.1686336155.910463.blinux-list@redhat.com>
In-Reply-To: <mailman.1788.1686336155.910463.blinux-list@redhat.com>
Message-ID: <mailman.1748.1686341177.910461.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

First try stopping the systemd service. Then you should be able to get a 
debug file because it will not already be running.


I have noticed for some time that speech-dispatcher's ALSA driver 
experiences issues with either glitchy audio, crashes, or simply not 
working at all on random machines. The pulseaudio driver seems to work a 
bit more reliably. Try rebuilding your configurations so that the audio 
output driver is pulse. That *should* fix things if the driver is indeed 
the issue.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

