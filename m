Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5336613D7
	for <lists+blinux-list@lfdr.de>; Sun,  8 Jan 2023 08:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673161782;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5ExCPeImXxQmMYLYVV9QWGEVSHdih2IOKoKQvoEH2Dg=;
	b=iAsMlPfMNn+7kf0wR2mCul6e1+lzIKK0rXkIQ7spcH6CKC2y/NWsk9+Z4YDfvF6EPsrI4J
	+glsl04lIZSF1riaexa9OoGNTzOjChwY1YUClxKLelLGeFmng0CWjZ35IwVKk74lYLkjJH
	nDKahx9dnnNWV1yiv5GHMZd1j8AbL1g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-AndB6mrqPrKJgFgby6cyaQ-1; Sun, 08 Jan 2023 02:09:38 -0500
X-MC-Unique: AndB6mrqPrKJgFgby6cyaQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 222CA85C069;
	Sun,  8 Jan 2023 07:09:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id CEA6340C2005;
	Sun,  8 Jan 2023 07:09:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 255B319459D5;
	Sun,  8 Jan 2023 07:09:30 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Jan 2023 08:11:44 +0100
MIME-Version: 1.0
Subject: Re: check for existence of file
To: blinux-list@redhat.com
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
In-Reply-To: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Zc700UWbYuM=;I/1RgcSPcZP5/pAzKjklCma0QBG
 vgmqW6X4ptL5xLjYLambdfUzFgaia/p3si/+YQQYBot8KfPEifZplk2rsGId9vtF63L1vckf1
 avJn6qIe0XDsUgWRTEkHV0W7+9+whiDV6TsngyYk5bR6+Od6QWJJDm3/XEsIb1pC0e7MenBFd
 OfGHZzVMYBpSwbZ+rOVoVWfxw7NsaZEOYwRLDvPRe6kfJaq5OD5gMUG5Utdy6Yasw247Q7xGO
 /q7PABZDKLNRpECNvFORohqG2GgRyyLcEJehO1v2UGQpLN0hn+303TfpENoeoA8LutwWPaNXo
 RttSAQ8z0ym5UJ//gBDZomBiyCdheScYpKCBQy3Hxg14yxFzgHOTUO4qTSpq7JEjLOUg1uL/9
 ZRlSHt5MXvm+FLZXnyiUkMD5vqdqybUnoc1pSQkjZH3YHP+jqhRNnWGOKdRpX1WS3l9dROS2I
 VuMxtNZDWI+aSEJtVxU3+m/6PCrHNj7qtTWovMlN6iZgtVreQ6bgADMD4HHja6Yq+WZY3G7ah
 2zaJDWXznTaxOh+946E6Il51y+k0Tna136IgvhhktC7xVCsg79I6KVHawsZyfUe+N5OOPi00G
 wlYkFVmz3z7zYoD/g7lybk+3f1RXFLhXqhhkZ/jq9tFAOAh8Z25lKpBlRdldqFoMKBxK3tosd
 Qsl1tEY2ig5mOCZdRyM3dmfz4WwEGG8/zfkpQ9w6Bjik3dN2FLOsSQnLekA3RvfyY9BX3esLO
 S8ZD2dQ0oxMz5LdbdY39KNngjZWIFHfc82d3IGkI0lIMWXyVZJ+NXcUrzpOR+xDhLmm/hdpg7
 YYKwqM0k4d8wGO+IQpjCQ3hoHA4nRdGq97yELq4Qizjf1fBZ+2pMq+x4UJ5rqx5jUQgoXzffQ
 IESopyGtPUbAp8PYoitekt5sqGSj3f56yBUZmYiuMSfizJ7VevYLy+JgGZubQO+cgBH7A3oAG
 LgFkc0QGapmYh3EV+6g2fEWdioHSckguaKmjvTxZpCJB7+jAr3CqfXhZwffkD+DgwU08Jw==
Message-ID: <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 1/7/23 22:29, Linux for blind general discussion wrote:
> The script c-jenux.sh checks for existence of a specific Jenux iso and
> lets the user know if it exists and does not download the file.  I'm
> finding this useful for this particular project and I figure others may
> find it useful to check for other files as well so I'll post this below.
>
> #!/usr/bin/env bash
> # file: c-jenux.sh - check for bad iso
> wget --spider -S https://nashcentral.duckdns.org/projects/Jenux-2022.12.04-dual.iso 2>&1|grep -i remote
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

Would be better if you would point to that file being tracked in Git!

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

