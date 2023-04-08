Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0165C6DBCE9
	for <lists+blinux-list@lfdr.de>; Sat,  8 Apr 2023 22:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680985835;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=2Kjfjbf11AtKA5rATgcMsRCE+q/Wcb3rPPhjzQeGpXQ=;
	b=XRvqPg65+z+nv3+izAQmnW4iW38Vzgsc3ptNK8/WzM+p6JMTVYErKwrYLuPTaalgLhoO3p
	CGVVedWAV+soiXqrR8cGBGKQdgyxmPiWIXXEo/sN7vzIig0T9N6jFv/J6TiuRKbnzONvQB
	RC2qzsW6/hZLsI/FBAPXgjbYhxKFw7A=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-657-FEUL9CkNN0yD5TJTjRjQ0g-1; Sat, 08 Apr 2023 16:30:32 -0400
X-MC-Unique: FEUL9CkNN0yD5TJTjRjQ0g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4D758533B9;
	Sat,  8 Apr 2023 20:30:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3AB702166B31;
	Sat,  8 Apr 2023 20:30:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 7B45919465BB;
	Sat,  8 Apr 2023 20:30:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 8 Apr 2023 22:30:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: orca-list <orca-list@gnome.org>,
 Linux for blind general discussion <blinux-list@redhat.com>
Subject: script to toggle on/off a screen or monitor
Message-ID: <mailman.122.1680985821.2632805.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/mixed; boundary="------------FMQvZO4Debuej9I0vhle6sqJ"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------FMQvZO4Debuej9I0vhle6sqJ
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

doing some house cleaning I came across the attached very small shell scripts
aptly named monitor-toggle. It just alternatively switch on and off the display
and say it using spd-say.

I do not remember who wrote it, but it's not me.

Didier
-- 
Didier Spaier
didieratslintdotfr
--------------FMQvZO4Debuej9I0vhle6sqJ
Content-Type: text/plain; charset=UTF-8; name="monitor-toggle"
Content-Disposition: attachment; filename="monitor-toggle"
Content-Transfer-Encoding: base64

IyEvYmluL3NoCm91dHB1dD0kKHhyYW5kciB8IGdyZXAgJyBjb25uZWN0ZWQgJyB8IGF3ayAne3By
aW50ICQxfScgfCBoZWFkIC0xKQpzY3JlZW5TaXplPSQoeHJhbmRyIHwgYXdrICdCRUdJTiB7Zm91
bmRPdXRwdXQ9MH0KICAgIC8gJyRvdXRwdXQnIC8ge2ZvdW5kT3V0cHV0PTF9CiAgICAvXCpcKy8g
e3ByaW50ICQxfQogICAgL15bXiBdLyB7aWYoZm91bmRPdXRwdXQpIGV4aXQgMH0nKQppZiBbICIk
c2NyZWVuU2l6ZSIgIT0gIiIgXTsgdGhlbgogICAgeHJhbmRyIC0tb3V0cHV0ICRvdXRwdXQgLS1m
YiAkc2NyZWVuU2l6ZSAtLW9mZgoJc3BkLXNheSAnbW9uaXRvciBvZmYnCmVsc2UKICAgIHhyYW5k
ciAtLW91dHB1dCAkb3V0cHV0IC0tYXV0bwogICAgc3BkLXNheSAnTW9uaXRvciBvbicKZmkK
--------------FMQvZO4Debuej9I0vhle6sqJ
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

--------------FMQvZO4Debuej9I0vhle6sqJ--

