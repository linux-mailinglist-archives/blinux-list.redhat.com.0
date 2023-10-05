Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A197B9C5B
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 11:55:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696499717;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=54uBtiqEfpBlCy7Dc9dd1/ytD/HdAmrruMkytvTz0cQ=;
	b=ig57DmAibjSSQ5BTzUUQk5q2kydTPf2HUnbTsG++sM0PKa/drHUcmdlqFrMmpjtFzeB9B1
	fDvgHsJ3hot45SKRWLZKc3B9W8iAwJwUd2Im2OdjexKhXmiMq7Rm+fUsmXOFtUcqCedtqX
	n+oUPuRaWc/+Jssiwpf6mjqMGUTgbH0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-696-un40gS_iN2CB8-itb9uA2Q-1; Thu, 05 Oct 2023 05:55:13 -0400
X-MC-Unique: un40gS_iN2CB8-itb9uA2Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 451FD8039CB;
	Thu,  5 Oct 2023 09:55:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D6EA540C6EA8;
	Thu,  5 Oct 2023 09:55:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 2FDB519465B1;
	Thu,  5 Oct 2023 09:55:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
To: blinux-list@redhat.com
Subject: Detox or other similar tools
Date: Thu, 05 Oct 2023 04:50:49 -0500
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.4.6.0)
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:xmtWWAmxD+c=;GZ+JXuWVp0c8qeDCtu8c5QnxaMa
 d6wyjFRm+eKa+FjLoJTyeVMrXL9eJCATkp09dBMi6LKLbm81UFBKOXGGU+rEQLTbhcKiqTH76
 f/wJ9CbqX7eaq3KIzt68O4nDviXI42lJOlHulv4Fv/fCl1u4xww7YyHtkLVkyVJzwdr6X4DGx
 s1RNUYwMf/SrkXdnGJ5Hanb4I8g5R32um8TKUZSVsNXtQ/nHEE/uMMaqwIt7X1QIamreWt9XJ
 kpTSrYC1hbOdssafXyhL4vt4xmFVCIyRXmmvZXf+atKA1FoW8a2j3tH8xgw3lx4qAWAELlLYO
 LWEdJ3dA1H0wnUvSE4G68vI47DhWrYxRg8GZ0c2jQdYbVOXv/SNjq92cj+LruV0Rsn0TrNs8b
 +TUpJOJ8b6wMzzda/Fhh92mJz1rIv0yk3yntvMZeKsZxigDqDiz6WrM1YZcb7GLQcK/xYumY9
 x/N62ykNBJgzt+/+YtQBh75u0Cnh9/CJs39NSoMDD0e/Ok3cOkVxD831XImw9157vuAs5YDvg
 6FaiDXclgV6rXcX+3ilfrGy+vSbVN/BAFqyKl0ndy8QiYFazC3Bx1LTqMGxy5aDAms/F26GHZ
 diEdTNnyqhkQ7W8KWa27UpJ/XgiYapnLcpGHhwnlZnpZM7YzDiYHL48y1uKLIca3kKk8byDB2
 suWesjKoE0wqVczdaUhu7MQITigtoN31IWb6ukt3VJ9X9SmG5nIjsEckYnfoaqLz9BM27kPSp
 aJgZ+SWq0FaHDPaGLJs3P9CM8rpUgQeoLrldBPID/U7F9yeiYNXXlmWbZk4wcEie9GUiXISlM
 PS2qfwd4lM3gptXPppcLK9anEj5fIfGRMTMj6fO5/wuAuckROCyZO6wC4eXzIQNyTaqjonFnX
 7tgqTOZ2Mxv9VH535wCufI2YaM/I3y1JUCKZj4z3c8jRBydZcnTnI18YUwKsmFXfyuii03znf
 wci34g==
Message-ID: <mailman.1441.1696499706.2981441.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I want to strip a directory of file names of certain characters, like these.
: ? ?

Detox will do that, but it removes spaces, commas and a bunch of other stuff. I just want to have a list of characters removed, not all punctuation. Is there a tool that will do this for me?
Thanks.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

