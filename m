Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 01A363D996E
	for <lists+blinux-list@lfdr.de>; Thu, 29 Jul 2021 01:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627514970;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Uh3DNI8vhZMeBWOXTdArPoesRlxCDaz1tZBDGTGr1Xk=;
	b=S4Yd/xUlfQ8mT9S1FUtK/Y25txlkQmkyQN/GhxSwioJzn1zFJXoxGjMVLRmfcYQSSaTz9B
	849gO1Xq7GCacD4jZiiJ8qKp0OaEiP6YxZlzN2vB2xE/ZaW8CRNoJ7CWknqunm7EakUu2p
	oUuleEitpenvT51hRNOE+vcX+V0DJW4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-eGRSOC0HP12b9_6DEwImZQ-1; Wed, 28 Jul 2021 19:29:28 -0400
X-MC-Unique: eGRSOC0HP12b9_6DEwImZQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 09A4B8799E0;
	Wed, 28 Jul 2021 23:29:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F7135D9FC;
	Wed, 28 Jul 2021 23:29:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 79C4D180BAB1;
	Wed, 28 Jul 2021 23:29:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16SNTA9O018210 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 28 Jul 2021 19:29:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BC2C120BB905; Wed, 28 Jul 2021 23:29:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B76EF20BB904
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 23:29:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5368D18812C5
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 23:29:07 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-277-Lt9aqF7nPqOlfyY3FQu29A-1; Wed, 28 Jul 2021 19:29:04 -0400
X-MC-Unique: Lt9aqF7nPqOlfyY3FQu29A-1
Received: by mail-qt1-f173.google.com with SMTP id d2so2653498qto.6
	for <blinux-list@redhat.com>; Wed, 28 Jul 2021 16:29:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jbSDzIseNEZU3Q886kk5sfHTAGAq9Yy6AWSOgo3qWso=;
	b=P7Pv6dwDzceZ7gdfzZvVOk6ORadt1GokMPzQOmX5nrP/4E+W37MQ8/vkDRiIc78g+l
	8EPBAZWrx8onNHJCk+21nQEUy87yUacknhc+qE+hJBTG/F5LkDis8u133vS9V5ELBP8I
	wOOMIUL64zcuwrSl8+wuONfNElVsdYIn0rpIBrlp6qeJHeeja/0nHhzGwT+Dx3U164b1
	mvkoeTNOBX4KYI6Px9QnJmxfDh/D3mwljclP7iT+YqE+DwSf2yAigqW7/xFL3G19Y0NW
	6nqD88kP8d/SfgtGdRVK4pC8xuk5y2zBltwjCHwdQqcKTITiaAvEW2aOPR4HJY1kOO9E
	5rVQ==
X-Gm-Message-State: AOAM530WM8amC07o1Zjv4EsOluuIaipNBimgeTYDrSEn1sB2PeufeqdF
	4rIHOoHAFVNN8VNTYNuLuOyQ08D2NdrArJGIF4I9/HRuhEI=
X-Google-Smtp-Source: ABdhPJxmQRDxcOi4DQl17LhgnLeSa50tuRavV6AqNG8+hE2KGWutD+W421aa34abZRzaZH8rmt1ROdKaHn2/EbY40cU=
X-Received: by 2002:ac8:5991:: with SMTP id e17mr1909554qte.6.1627514943965;
	Wed, 28 Jul 2021 16:29:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6214:b07:0:0:0:0 with HTTP; Wed, 28 Jul 2021 16:29:03
	-0700 (PDT)
Date: Wed, 28 Jul 2021 23:29:03 +0000
Message-ID: <CAO2sX32PZMWpWp_HdneZnML7kWLo2cAo=1TNVC95ns+UZLUQfA@mail.gmail.com>
Subject: Help with rclone.
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, so a few days ago, I asked about cocmmand line clients for
connecting to Google drive... I've since found the following tutorial
for using rclone with Google drive:

https://rclone.org/drive/

But I'm running into issues with the authentication step of setting up
a new remote. I copy the URL rclone gives me into Firefox(which also
lead me to discovering the tee command for outputing both to stdout
and a file at the same time so I can copy the URL by opening the
output file in Firefox instead of switching back and forth between GUI
and the console to copy it manually), and log-in to my google
account... I get a success message in Firefox, but when I switch back
to the console, rclone has terminated with an error about a token
being signed by an unknown authority, and for some reason, tee doesn't
right the error to the output file, so I can't easily copy it into
this message.

Any idea what went wrong?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

