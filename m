Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 709F517EB4D
	for <lists+blinux-list@lfdr.de>; Mon,  9 Mar 2020 22:36:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583789801;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LTsDY+WXeyQ6+r7iHgwhwErN5L7KGtwYAgrgT8G8zus=;
	b=Cbregnjymsj+QZYC3O9zWp7AK7dC7b1S7/MWT+iaW1/7vLxG4nnvMP9o1aaYqc92lLpTh3
	OM4RrHUz/DvcD7za5/ehAvAOo4MLTibJnfpk/DdGbSledJ7A5CudusXgJOZgwN8oCwp7z2
	4lT72/TjBDDuS1oipaotX5aQLrfvbGA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-182-CU4yl5QaNemRs_MuBsQ1ew-1; Mon, 09 Mar 2020 17:36:38 -0400
X-MC-Unique: CU4yl5QaNemRs_MuBsQ1ew-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44E418017CC;
	Mon,  9 Mar 2020 21:36:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 661608CCE2;
	Mon,  9 Mar 2020 21:36:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DDC58449B;
	Mon,  9 Mar 2020 21:36:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 029La9S1030832 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 9 Mar 2020 17:36:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9206F10CD618; Mon,  9 Mar 2020 21:36:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8C25210CD619
	for <blinux-list@redhat.com>; Mon,  9 Mar 2020 21:36:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C8498800294
	for <blinux-list@redhat.com>; Mon,  9 Mar 2020 21:36:06 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-491-k8pEvBmpNwWYby1bdBg1Rw-1; Mon, 09 Mar 2020 17:36:04 -0400
X-MC-Unique: k8pEvBmpNwWYby1bdBg1Rw-1
Received: by mail-wr1-f49.google.com with SMTP id 6so13136512wre.4
	for <blinux-list@redhat.com>; Mon, 09 Mar 2020 14:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=52qRNmxlbSr05Ue6Q5iogWd17eMNyYYlSYC3M50u9vQ=;
	b=CKWdwky0S26IGSkPQytxHzklmrtO3nyANPfgpwmclFwCloMKn2O2GCVW1w1OzhNfLn
	EvmBSvmnlVpY2hG4lzcfeXo2jnnIlUBGJ/6fBxXE+2dIUYkKaQYD8oWrtMr6txQSV0+/
	rTIwZboLp+3KCUxahh9D3ohcGcEEGdRDEIuxXUbijm7Kt9cdZ2Pp/FLjcRudL8lsEgZZ
	vuyB/gvHT3+coAJCgV0Hs+ZVgX6JU2iBuZzMs0ohKuZYe98ywcAk4vIRqEigGdN4hZ0n
	oaE689xVgeG6ciaYBkoyWpnw+iqVU0aC6I7omsBR89yhlcE8fAA/uyuKQPlFUjYJQBfL
	0EAg==
X-Gm-Message-State: ANhLgQ2V0x5/9UtvqICMoYCnn7+Ew+WplVhHPAaK2WrzRcMxOpoOC7tC
	kkCKb6PCyP6+qgue2+pS2dkJphRq
X-Google-Smtp-Source: ADFU+vsZckqLUyEJzklJt2nZj06E2HEN+Cq2QpABpgJJzL/v6aEf0BUWvzSkMfq07iASDOHEx8J+eA==
X-Received: by 2002:a5d:6902:: with SMTP id t2mr11789024wru.135.1583789763276; 
	Mon, 09 Mar 2020 14:36:03 -0700 (PDT)
Received: from ?IPv6:2001:16b8:2c7c:bb00:5540:a9f5:9eaf:532c?
	(200116b82c7cbb005540a9f59eaf532c.dip.versatel-1u1.de.
	[2001:16b8:2c7c:bb00:5540:a9f5:9eaf:532c])
	by smtp.gmail.com with ESMTPSA id
	y189sm1146406wmb.26.2020.03.09.14.36.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 09 Mar 2020 14:36:02 -0700 (PDT)
Subject: Accessible PDF viewer
To: blinux-list@redhat.com
Message-ID: <2856df1a-69cb-0a03-d4f0-bf3051b2ab20@gmail.com>
Date: Mon, 9 Mar 2020 22:36:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

Hello,


is there any accessible pdf viewer on Linux which can be used wiht Orca 
screen reader?


Evince seems not to belong to this category.


Thank you in advance!

Vladyslav



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

