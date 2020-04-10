Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 8943B1A4592
	for <lists+blinux-list@lfdr.de>; Fri, 10 Apr 2020 13:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1586517613;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ZO6gqFrFrgxKY2Fy5INQMX3dwfMaICp9G05FE20uX4Y=;
	b=FTBJ6FWRflCYPQ6xrrgBy+V9xEFzIDQaRYFtirKn0kdoP+9SHsbbVnZYa4qQPSRMscl5L/
	DHUeT499y+mDPcOEfRQIAKv9k5UPvGa8BUTZvAua8oM4ouGrZVl9Rcrw7emhqrRLu3+drH
	yGv4LKnrcHN/bbnEE2Qz1HVwWtFkqmk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-gMIWXKX3Maq2Z4nWYJRoCA-1; Fri, 10 Apr 2020 07:20:10 -0400
X-MC-Unique: gMIWXKX3Maq2Z4nWYJRoCA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 77579149C6;
	Fri, 10 Apr 2020 11:20:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D3A19E0D7;
	Fri, 10 Apr 2020 11:20:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8A27318089CE;
	Fri, 10 Apr 2020 11:19:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03ABId1A013563 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 10 Apr 2020 07:18:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B1F77202A940; Fri, 10 Apr 2020 11:18:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD8582024517
	for <blinux-list@redhat.com>; Fri, 10 Apr 2020 11:18:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 11082800297
	for <blinux-list@redhat.com>; Fri, 10 Apr 2020 11:18:37 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-21-9OufDI0wNQKSgFM8HC-9FQ-1; Fri, 10 Apr 2020 07:18:34 -0400
X-MC-Unique: 9OufDI0wNQKSgFM8HC-9FQ-1
Received: by mail-wm1-f44.google.com with SMTP id z6so2424295wml.2
	for <Blinux-list@redhat.com>; Fri, 10 Apr 2020 04:18:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=y39fR/EDz1t94psSwNE/GzEAZiSZCG2IzyvtyTHqq2o=;
	b=hxwbmJLtVYm0pr3MqvZoKVFQUcZ20vWS1J1g+mTH2lm9a99k8HDM/Mw4XrpwY+OQ7b
	ijtV/M40Zhie3d3sZQeg1l356FotkIsZRE1jov6iLkzVZ/CEL7usvlMHmYMWM9hzW5P1
	nhCPVeB46Obvolo06a07rngnq5qlWqVLyWgaZcpExHSusr3g2xv23ExK+YbaNJaYXAxd
	pv/+OjACE3fl8EUmq3kf/QCEd13UumnqUNslhG+hsGImhFAI0bVUt61JUIVUuhhzlaWC
	d119brO/Y+0otT4CRUDXB+xTU0sJ4OZ1nIyV2Q0U7GJClHn8bWQ2iOfbZuZ9Syq3anoe
	v4YQ==
X-Gm-Message-State: AGi0PuZedC6tS3h6Cz6AwBzMxTVVlWfvq+LJaK02JYX1nxsUfaiLjNoA
	lFbC94GrcT8B02wrtWQNYiALrwbEjzk=
X-Google-Smtp-Source: APiQypJOdoXg0Bln8MEgD8wldHA+0ZFsY/i65OjdXtRUb8wAe8N1xlPNsrJFh+fk+K1LETuI/Mbh6A==
X-Received: by 2002:a1c:9d0d:: with SMTP id g13mr58925wme.102.1586517513536;
	Fri, 10 Apr 2020 04:18:33 -0700 (PDT)
Received: from localhost.localdomain (78-157-160-1.silesnet.net.
	[78.157.160.1])
	by smtp.gmail.com with ESMTPSA id k9sm2597315wrd.17.2020.04.10.04.18.32
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 10 Apr 2020 04:18:32 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: turning flat volumes off
Message-ID: <fcdfd06a-d868-8310-9c64-3a127b11d4ad@gmail.com>
Date: Fri, 10 Apr 2020 13:18:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

I want to turn off flat volumes, Fedora 31. I uncommented the ; flat 
volumes = no and I saved the changes. But, I lost the next step with 
some reset command. Can you help please?

Thank you,

Pavel

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

