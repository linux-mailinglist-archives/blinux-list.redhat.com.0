Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC944BBBB1
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 16:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645196554;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BEr5uQBU4KmwlFCafksKrtXWdmhOiKd+PiSgWd1VeNA=;
	b=MUPhPipi6WxzyHtjtfwZFE00t27bAGGPeVqQFmkjIfHqfojdtgIIjhwxeYqmVIaD3EEt8/
	APREgBEEGncKMcxlPKCN/ljeMih9RZcwRjgxBT5gN2gWxAVLO4FIh1o+2dYNzVaOajqStr
	YdegVhjL5TbW6OtwMJ8FK+RrYr3vmbM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-372-nO6CNNgBO_iut5-sS_Q7IA-1; Fri, 18 Feb 2022 10:02:32 -0500
X-MC-Unique: nO6CNNgBO_iut5-sS_Q7IA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F41021006AA6;
	Fri, 18 Feb 2022 15:02:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E43A210841B6;
	Fri, 18 Feb 2022 15:02:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 045574BB7B;
	Fri, 18 Feb 2022 15:02:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IF26mm013244 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 10:02:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6EB385361EC; Fri, 18 Feb 2022 15:02:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6ADE35361C3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:02:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51D7C85A5A8
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:02:06 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-82-mPn5COVWMQqO9bBP7AWitw-1; Fri, 18 Feb 2022 10:02:02 -0500
X-MC-Unique: mPn5COVWMQqO9bBP7AWitw-1
Received: by mail-wr1-f42.google.com with SMTP id p9so15024977wra.12
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 07:02:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=VJgqr48W53G9/Kdm2fN8kAfkFsPj78atH+aBgn4kxzk=;
	b=cQlq5Tnm2sLKJJpKbjlWuvCm24wUVmffrsu0z+QQcvCKQ91Rkog6OEcyz22qTtLPOa
	3mytqq3DD1Q5Laga+Yrg3xSfEpbi8ooFqCnhOGQNXW12Q0ht8hN+YFfvKrTw2dtXhuD8
	JwiQnelBg11Wsm6q1pbptCfX3twknZo/agjvQqATqwQa+MN8Gm3n35ipEOELA8lnuzL1
	4LO724eg8kJoOFNrhPambD8mPrV2tFV/qldlnC3Vea1wQ1/WWcPX5TKhrj7BpfsheWuN
	KY24ZOl/nYtYaOTx+QljQYHtMpNbnLTeLmudT6UTUhzkEx/b9Sr3C5Y/yw5T1Hp7SyX6
	Moxw==
X-Gm-Message-State: AOAM5330ozC89akZW7bjJZ7WoP9paw9fCog2j2YAVnzi8Ja2ozDj+w60
	8edkC4b0YL/MMEDJxKVO4VFcMnMCruM=
X-Google-Smtp-Source: ABdhPJyf4JGlLw/UEkZost+IqyNyRBFYJ5++3vnr7t4eyuCU3SO88+0CQYtkb+ol6Y8vVk9GwUk1yg==
X-Received: by 2002:a5d:47cb:0:b0:1e8:593d:d34b with SMTP id
	o11-20020a5d47cb000000b001e8593dd34bmr6127680wrc.124.1645196521128;
	Fri, 18 Feb 2022 07:02:01 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	n16sm12140858wrm.19.2022.02.18.07.02.00 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 07:02:00 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Mutt, how do I..
Message-ID: <e2f33a0f-e33b-aeaf-90a8-8afd3e0b6d63@gmail.com>
Date: Fri, 18 Feb 2022 15:02:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Okay so...

Hopped over to Mutt as my email client. Since it uses less resources.

Now I've two main questions

1. Currently I've a macro to do mutt email -i muttbody.txt -s subject

How would I add text to the body of an email? It just adds it as an 
attachment like mutthostname then numbers.txt instead of putting it in 
the body of the message though

2. Is there a way I can display the number of unread messages somehow, 
like Inbox (2) like I can on a GUI client?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

