Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 258DD1847D0
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 14:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584105441;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ELA/7oVVUZolUq7LfQ8kW09QOrS7UOW3rlzin9SMUsY=;
	b=Bhhu+85eQcP/Hh9q0mPXlF5fyHgnzPMi26EptskbzmqDRXl5tb4L1hOTpv4On839E6NfHO
	a9f1xiouwB1a7wLidy87xSu1Pn75MpMcDbI612X8V8kzjY6pSWeyits2czZXDqHe+kQ3Am
	J+gE6U4sfNEVNw4jylVtCX/3fZzfsyM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-pnTofNz6OAeIF_-s9lV0Tw-1; Fri, 13 Mar 2020 09:17:18 -0400
X-MC-Unique: pnTofNz6OAeIF_-s9lV0Tw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C654801E66;
	Fri, 13 Mar 2020 13:17:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F3425DA60;
	Fri, 13 Mar 2020 13:17:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 91D8384479;
	Fri, 13 Mar 2020 13:16:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DDGliC003640 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 09:16:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 244C82038B97; Fri, 13 Mar 2020 13:16:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ECCF2038B82
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:16:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32E34800297
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 13:16:45 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-143-ArNXIcOJP8O7LIuOGM_sOw-1; Fri, 13 Mar 2020 09:16:43 -0400
X-MC-Unique: ArNXIcOJP8O7LIuOGM_sOw-1
Received: by mail-wr1-f47.google.com with SMTP id 6so12044070wre.4
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 06:16:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
	:subject:mime-version:content-transfer-encoding;
	bh=DVBj0rGXdfKsOzIRiKPFyeN72Jncy0bTBVCND2vEMHs=;
	b=gbtl7ZX2JtrqSpV95mf9zickDJ+FkiZjixapnh852urqY0qfCEZF6bidQ5xtF6cQeh
	vxj6CUbtCqRvVSHUW4159X5e047yQpmQ4hrM6nHhCQ29YrQ0FaaXlMvtt5QHjuYenZ9E
	V6xJU2AotBQmhjOSfQECwU6CJZCOawkKfn0tO7FL1E4XSQ0yAP1oZL1vzU6vbFDZq7XN
	cnpiGDZRD5HCAUH/KHA9GKL9A0uJ/d/VO89Z1939puo6noWMg/cWzBsnaEsprsa2uRm6
	xSTetUBYS/j48j0Z9VzjoIDpn84ORJRY8HjA6ve8QRe4RgevypqprsYahkDlDS0Pxbqp
	Lu1g==
X-Gm-Message-State: ANhLgQ3/2bJOsLx6i0qI2FXL6xeOXbOnG/+GAyDL4PVbbePA5x9dc0EX
	4bhqsyqHecHOVYVvFL15/kpQpzieFz0=
X-Google-Smtp-Source: ADFU+vuFhgDBG+kVVtj78zIj3h8jmhtdT8MF2c0O6zVDPnE2kjEel/5tNtaif2ilasPntb1aOgIwrA==
X-Received: by 2002:a5d:6086:: with SMTP id w6mr17447914wrt.224.1584105401297; 
	Fri, 13 Mar 2020 06:16:41 -0700 (PDT)
Received: from [127.0.0.1] (cpe-75-189-192-174.nc.res.rr.com. [75.189.192.174])
	by smtp.gmail.com with ESMTPSA id
	f203sm1383134wmf.18.2020.03.13.06.16.39 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Mar 2020 06:16:40 -0700 (PDT)
Date: Fri, 13 Mar 2020 13:16:31 +0000 (UTC)
To: blinux-list@redhat.com
Message-ID: <4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
In-Reply-To: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
Subject: Stormux is born.
MIME-Version: 1.0
X-Correlation-ID: <4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I'm very happy to see this project continued, and I have already started working on the social media aspect and marketing and promotion. Stormux now has a Telegram channel that will announce news and release notes,
https://t.me/stormux
as well as a linked general discussion group at
https://t.me/stormux_discussion
Stormux will also soon be available on most of the usual social media channels including Facebook and Twitter. I'm happy to work with this project, and will do my best to keep everyone interested updated regarding its status and features.
~Kyle


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

