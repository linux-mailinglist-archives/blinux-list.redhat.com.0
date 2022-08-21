Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDAC59B611
	for <lists+blinux-list@lfdr.de>; Sun, 21 Aug 2022 20:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1661107709;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FRPnSDzcIu5dx0ua+c7stel5VINcM/f5prbtN3lPN9o=;
	b=Z4AqljN9/GQsQNR9FSJUvv+rC6YPshE3I7qKyfIxt+LWDKErqvPQblvJYr2lT7RtZ7ChiZ
	YTFXb1/RTdNcfIU5kMlZoLHvFuZWe57q0O834mqCueJFZgM4JI9uiwlOeFEyDW2jyHjb9E
	kEqiopSDdWW7noWpu06J+Awc45dxNeo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-46-O_FNr6heO7ajWT3Lr7YlbA-1; Sun, 21 Aug 2022 14:48:26 -0400
X-MC-Unique: O_FNr6heO7ajWT3Lr7YlbA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30BDB185A79C;
	Sun, 21 Aug 2022 18:48:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id BA16E2026D4C;
	Sun, 21 Aug 2022 18:48:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 432311946A4B;
	Sun, 21 Aug 2022 18:48:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 21 Aug 2022 14:47:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: Raspberry pi 3
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <58F588DF-F64C-482C-A02D-E5F1EF0C664C.ref@yahoo.com>
 <mailman.2381.1661038130.10504.blinux-list@redhat.com>
 <mailman.2444.1661106709.10501.blinux-list@redhat.com>
In-Reply-To: <mailman.2444.1661106709.10501.blinux-list@redhat.com>
Message-ID: <mailman.2468.1661107699.10507.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

In addition to what others have posted, you may also be interested in 
Stormux, which is a talking distribution for the Raspberry Pi 3 and 4.

https://stormux.org/

It's based on ArchLinuxARM, so you will have full access to the Arch 
User Repository (AUR) if there is a software application you need that 
you are not able to find in the standard repository.


Since you will need the Raspberry Pi 3, you will need the image that 
boots on it, as the Raspberry Pi 4 image doesn't boot on 3, and the 3 
image doesn't boot on 4. Here's the direct download link for the Pi 3 image.

https://stormux.org/downloads/stormux-pi3-aarch64-2022-04-21.img.xz

The Stormux email list is on groups.io, so just send an empty email 
message to

stormux+subscribe@groups.io

and reply to the confirmation email that you will receive. You may also find

https://groups.io/helpcenter/membersmanual/1/additional-information/standard-group-email-addresses

somewhat useful, as it gives you other email addresses you can use for 
list management. Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

