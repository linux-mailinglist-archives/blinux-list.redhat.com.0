Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 541113EC9B8
	for <lists+blinux-list@lfdr.de>; Sun, 15 Aug 2021 16:54:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629039277;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cQ0NBhjr7JEhSeIkz1q0nOnNQQoZBvU51t3mJ8bgsAc=;
	b=XHhDICkNzow4n69WjrByDkj4DXZw1Ltx2JO1RZtSc9d3aI9v0/rRlWZsPmmTmPjCu+xupM
	cpXxdQ60q77j1EJVhw8iqgMBaltpVUSUoR3tp4YJZIWZco3HsHTECOSUsS4pJhicJimlZA
	CLYQ/exaMeRqTfQb5JS1b/Wv6gP96+E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-lM6zPegRN9yDA4uyEYUaHA-1; Sun, 15 Aug 2021 10:54:35 -0400
X-MC-Unique: lM6zPegRN9yDA4uyEYUaHA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A304107ACF5;
	Sun, 15 Aug 2021 14:54:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5783360C82;
	Sun, 15 Aug 2021 14:54:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B3E14BB7C;
	Sun, 15 Aug 2021 14:54:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17FEs8mx013160 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 15 Aug 2021 10:54:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8E464568E5; Sun, 15 Aug 2021 14:54:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 89B0C2EFB8
	for <blinux-list@redhat.com>; Sun, 15 Aug 2021 14:54:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E934289C7DD
	for <blinux-list@redhat.com>; Sun, 15 Aug 2021 14:54:04 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-518-Ic46Dg6UOd6aSnwJ8vJ_-A-1; Sun, 15 Aug 2021 10:54:02 -0400
X-MC-Unique: Ic46Dg6UOd6aSnwJ8vJ_-A-1
Received: by mail-wr1-f54.google.com with SMTP id q11so20043578wrr.9
	for <Blinux-list@redhat.com>; Sun, 15 Aug 2021 07:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=FHtow7Ty6ZyQquHTNhTbTs5IFJmMS1QOmSqikLrt/VU=;
	b=GxXkLqI6Q/LLL0wuutOU8/SrLC5QJFE7qaLYdK4cgcSPHoor5wwWS6Xzt3iNdUFtIP
	QG1qDFBikiB4uyKAjgJpgamJEq1suPbpo6kif/pHUrzufwJONFa39SYK2HwV27j5bOH3
	ZyUBoyacK35h4SCRyolgR1QZqDJpviFczbnMiAToE1/ccDXRYU6MKqrNPlxX6r+/J7TY
	jGk24ldysifjlJs867vYSUPuMbZkKdMmPg7aJM+KKWjDBStu7S4ZI+xy2lWFq926DgST
	dY+Wz76WmJ9YnUvc7BG9exr/4BaroFmlmcJoCo97VbMiHfcLIjz5erTOE5JIx8CLdO7m
	wJsg==
X-Gm-Message-State: AOAM532BZsYzVllL2zGt89tCGPuwnYSpf1qUr73Ne7QmQ35nRaXvti4G
	4toImN5Pa+sK7ysYQfiLgS9kFG2c8Nbjpg==
X-Google-Smtp-Source: ABdhPJxYBMsJQ9DSOdB8BPMXPJCl1sbref0It4pvnnTNi+IswcnUzn2u7Z2es/FIxfpd89W10y8MGQ==
X-Received: by 2002:adf:dd4d:: with SMTP id u13mr13133197wrm.324.1629039241271;
	Sun, 15 Aug 2021 07:54:01 -0700 (PDT)
Received: from [192.168.8.113] ([197.185.100.139])
	by smtp.gmail.com with ESMTPSA id
	l17sm3367742wmq.44.2021.08.15.07.53.59 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 15 Aug 2021 07:54:00 -0700 (PDT)
To: Linux for blind general discussion <Blinux-list@redhat.com>
Subject: How to make brltty start at boot?
Message-ID: <0c95938c-58d5-68c8-13e8-46188a282fba@gmail.com>
Date: Sun, 15 Aug 2021 16:53:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


I find that my BRLTTY does not start at system boot, is there anything I 
can do to make it do so? I know that if you have a display connected, it 
will do so, however, I don't always have the display connected to the 
Linux machine, mainly because I also have a MacBook, and only one display.


If anyone can help, thanks so long.

-- 
Warm regards,

Brandt Steenkamp

Sent from my arch powered ice cream toaster

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

