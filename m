Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E26584E7A13
	for <lists+blinux-list@lfdr.de>; Fri, 25 Mar 2022 18:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1648230403;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pTLpZZIl9yiF5bJb7oNPNH8MpdHs3d8QfY4yRnaNCsY=;
	b=YXkxO/EuKCV2I+nEIvL18HHrqYMFMLPN8rNNJt5w5ZMmt+YZuKAwz6hOXTchcxWuoc3kxc
	ZdSzhP7UFjQWIEuYtzcGkwS11BHy5NuFd6Bk59vs4SnIJwDCcfiyHvtRNJ6sO7cFHALm5L
	xHS9p3mlTkegA4LZ+ouNnqtpQHV1wss=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-370-t4TxJ7j5ORy6LE6gm5O12A-1; Fri, 25 Mar 2022 13:46:36 -0400
X-MC-Unique: t4TxJ7j5ORy6LE6gm5O12A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EDE1A8E7B22;
	Fri, 25 Mar 2022 17:46:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8E71D14582E2;
	Fri, 25 Mar 2022 17:46:06 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E7C041940359;
	Fri, 25 Mar 2022 17:46:03 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Mar 2022 18:45:55 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: libvirt/qemu and dns
References: <mailman.4332.1648215013.111204.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.4332.1648215013.111204.blinux-list@redhat.com>
Message-ID: <mailman.4540.1648230362.111201.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, Mar 25, 2022 at 08:31:17AM -0500, Linux for blind general discussion wrote:
>I have a win10 virtual machine running in libvirt via qemu with the 
>default NAT network set up by libvirt. I'm able to ping IP addresses but 
>not resolve dns. On the host, I have systemd-resolved. I was going to 
>start setting up a bridged network, but I thought of this first. Do I need 
>to do something with systemd-resolved to get my virtual machines to play 
>nicely with the network?

Per default dns resolution is working when using libvirt and let the 
machines run in nated network mode.

What are the dns settings in your Windows vm? Is the dns server also the 
gateway address? Per default and if you not have changed the 
libvirt default network it should be 192.168.122.1 ?

Is the default network in libvirt running? Whats the output of

virsh net-list

If no running network is listed start the default network with the following 
command:

virsh net-start --network default

And mark it for autostart:

virsh net-autostart default


Can you see a dnsmasq process on your host machine? This dnsmasq is the dns 
server used by libvirt for dns resolution inside the vm's running in nated 
mode.

Cheers,

  Schoepp






_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

