Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2476D3673C9
	for <lists+blinux-list@lfdr.de>; Wed, 21 Apr 2021 21:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619034771;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=W5itJF+BT6MuZrxgy/oZ6sLZtrrlY/3k0UP7s+7dARc=;
	b=RCsgGkMjgYV4oJGUJrM0iYL6L/n44qJLN3YrVFO44lHWQD8Q5vkSw77ufZxxN6OSHPWY6m
	yGprDXxZZDXAbeax38zZBXyeyqcqKweEQD7dVwYAbN/JhMQezKGw3HjFoxGs4WR0qr3ttN
	tLOeqv38GPNwHwStNYd9RyNXGSpa3o4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-vWPZ_71IOzyRG_IkcuazVA-1; Wed, 21 Apr 2021 15:52:49 -0400
X-MC-Unique: vWPZ_71IOzyRG_IkcuazVA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C54E107ACE4;
	Wed, 21 Apr 2021 19:52:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58A8E6064B;
	Wed, 21 Apr 2021 19:52:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC8C71CBF;
	Wed, 21 Apr 2021 19:52:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13LJq6CA001672 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Apr 2021 15:52:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 941F1F5AD2; Wed, 21 Apr 2021 19:52:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FE50F569D
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 19:52:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0AC580270A
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 19:52:03 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
	[209.85.214.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-436-3_jHQG-1PbysiCWc1fLZnw-1; Wed, 21 Apr 2021 15:52:01 -0400
X-MC-Unique: 3_jHQG-1PbysiCWc1fLZnw-1
Received: by mail-pl1-f178.google.com with SMTP id u7so20449557plr.6
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 12:52:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:reply-to:to:subject:message-id
	:user-agent:mime-version;
	bh=zJ//oMBG1G3kGfHy+GC59QY0Qaj5G/bRoxceW8iFIps=;
	b=MzlWEcU/N/NdbcKASR2zDBIwqdUu9ps/6Sgdmf9KsHXxIyirhcIptevmPNX6wb1p89
	Flc08s8RgE1pgQsSuPlioymt+gt8DdFKqltmJBojnTmQcob/3O5XBNLr3/Izl7fTw3z7
	7nP9ZXlXlYhas5EWdYai0t3Vv0YluEDgdU3hrmAKkEidH1F/E1LsNyX5DFR5v5F8vmX4
	9YezrakFlPJ9J7S2NY6/hOkbHAMAXg+1XzkaZEVx+gczHbcckPVwMT5yJ152voP0n6TZ
	PFiZodh4AldOoYzHyMeiZbGk+bXpuJlTuA07S15142n/lBeG5KbqtNBF21Z4d4xZhQ+3
	ri+Q==
X-Gm-Message-State: AOAM5333IsPC34QRf2Lut73ZPAMB4imM6zeymx8fRRYHBT8wayYjAKR6
	XsUUkCgE3cJ/g/0wqTwzPpPfh4G80dk=
X-Google-Smtp-Source: ABdhPJzRDqqjhmleK3BLf0Ih/1RUBOf4n1hYpR0U2ydoxzVknPCddHLR3zNpP2ABuH5Pz4kWxk6bVg==
X-Received: by 2002:a17:902:8d98:b029:eb:43c2:d294 with SMTP id
	v24-20020a1709028d98b02900eb43c2d294mr36340477plo.49.1619034720453;
	Wed, 21 Apr 2021 12:52:00 -0700 (PDT)
Received: from precision-M2800 (207-118-118-252.dyn.centurytel.net.
	[207.118.118.252])
	by smtp.gmail.com with ESMTPSA id j12sm137416pfc.17.2021.04.21.12.51.59
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 21 Apr 2021 12:52:00 -0700 (PDT)
Date: Wed, 21 Apr 2021 12:51:59 -0700 (PDT)
X-X-Sender: tom@precision-M2800
To: Blinux list <blinux-list@redhat.com>
Subject: 3D design software
Message-ID: <alpine.DEB.2.22.394.2104211249500.102398@precision-M2800>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Has anyone considered ways to write or make existing 3D design software 
accessible?  It might be interesting to be able to use some form of 
cad/cam as one of my hobbies and ocasional jobs is working with CNC 
machines.

Tom

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

