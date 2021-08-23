Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F02A43F4DE5
	for <lists+blinux-list@lfdr.de>; Mon, 23 Aug 2021 17:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629734274;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s7FXavKWhqejFKs+pVwzNq7iER3tJFul1xdzitaEBX4=;
	b=NlkemHLqltEdZayZYksTlM2YDzLe1edSuJ02A5Yuyi5FVioQE3iQ7smjYMXMwXFpyPDUnf
	TKXlOtGCO+Xzsfiu/lO+KrNaIl6RwcK5V3g0EnTb90kWF43qxrVspPgCPH38IsQiVAMcma
	0sJdDebuy1TbgIS39e/lMGi2QS5KZaM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-19-NzWgsiiuM4-G4-sW9eKB8w-1; Mon, 23 Aug 2021 11:57:52 -0400
X-MC-Unique: NzWgsiiuM4-G4-sW9eKB8w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B48A8801AEB;
	Mon, 23 Aug 2021 15:57:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2CC160BD9;
	Mon, 23 Aug 2021 15:57:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 28A4B181A0F1;
	Mon, 23 Aug 2021 15:57:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17NFvZ9h026983 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 23 Aug 2021 11:57:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4C9D71145354; Mon, 23 Aug 2021 15:57:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 475B21145357
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 15:57:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A1A6801E6E
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 15:57:27 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-55-3p_gFAIoMGueNWdM1faMkQ-1; Mon, 23 Aug 2021 11:57:25 -0400
X-MC-Unique: 3p_gFAIoMGueNWdM1faMkQ-1
Received: by mail-qt1-f170.google.com with SMTP id l3so14162830qtk.10
	for <blinux-list@redhat.com>; Mon, 23 Aug 2021 08:57:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=voU4Qc+oZTN6CAi3ndBBhJ1TUX/uY0x0ZOZVv3lBeC0=;
	b=tPbpU4o1Rk2z+BXXxokPXlaHwFSi9yEO+2E/mUcD4Ur+avojWchhc7XTlHtiCRve8V
	YRi1kc1vkdt0injnKLUnbLCb4kTKnxP8yIx845IH3ZDbWYC9Tk5X2j6HKFaHyYAAnKnk
	lDhHQdSyNfWYB1d/tYgYcrKomO3nZhvlTFyHNc+FCn7ruRbjplYF8AGmJOqKgo8KHVQ/
	e8bMDevSZXTVRtiYGbxD8t9j8iXDPZoFp867nEw4u4sQR+iinBQA/iPVvL+EeOQJzDO/
	s/IhhqZxoacmyBBGWdAuxcbPf/eW3c/iZvbI73RdsOu2Be16/R4dYpbkyZTKyd2aWGcy
	qXpA==
X-Gm-Message-State: AOAM530CYb/DVqAGeonDdwFzq7vF5i8xFgMHOxK9xW/pPaQpnD0Wr2Es
	B0SIQ9CElBCk3lv0RSr0k9tY447k6hVNFzBN8FIe196rV98=
X-Google-Smtp-Source: ABdhPJyZpZT/S4MNLGXsmwRdljpn2Qpw7JldK2bv9lf0QvHthZVKTttIY80SV8dApkJ0PLs3OVPFXZoNt0AUwISQHvM=
X-Received: by 2002:ac8:65cc:: with SMTP id t12mr28130262qto.245.1629734244297;
	Mon, 23 Aug 2021 08:57:24 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 23 Aug 2021 17:57:13 +0200
Message-ID: <CAD_4ddRofoD=eRyT2j+eXPf1SRGz343=gE1XLgbMqT8JKKZ68g@mail.gmail.com>
Subject: Request: sending Qemu script privately
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

I am in desperate need of a windows virtual machine, and I cannot find the
working Qemu script that was sent to this list.
So my question is, could anyone please send me privately a working version
of the Qemu vm script?
Thanks in advance.
Best regards.
Francisco.
P.S. In am on fedora 34, mate spin.
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

