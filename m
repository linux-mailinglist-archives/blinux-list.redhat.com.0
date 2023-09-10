Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 39788799EDF
	for <lists+blinux-list@lfdr.de>; Sun, 10 Sep 2023 17:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1694360368;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6u+G0prX0ogUQsnAPVQ9RbwHgQ53fIpGAmMXIXcPzSo=;
	b=eLIiIa/HxeCBB60ch4tav/iU1YCHMfhefszeN7HtWfkomauQqTP3KXJuQj99O27dfqCxWV
	1jWSROx0iO84USPusFh4M7YssJA2PchXY6Yo9n1k//RtVaUoMIEJ9FQBc6iexvFdD61R5c
	OvnLThPmmssV8+9MhXH6mIi5SZ6u/bg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-wbu-DJSANP6YuFib_m10Sw-1; Sun, 10 Sep 2023 11:39:25 -0400
X-MC-Unique: wbu-DJSANP6YuFib_m10Sw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A875980379F;
	Sun, 10 Sep 2023 15:39:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 65C50142B960;
	Sun, 10 Sep 2023 15:39:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9751C19465A4;
	Sun, 10 Sep 2023 15:39:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 10 Sep 2023 17:34:12 +0200
MIME-Version: 1.0
Subject: Re: gtorrent script
To: blinux-list@redhat.com
References: <mailman.1572.1694085502.353787.blinux-list@redhat.com>
 <mailman.214.1694354217.3088263.blinux-list@redhat.com>
In-Reply-To: <mailman.214.1694354217.3088263.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:aJpUUiIl10U=;5h/aGVbSJ+bfgzqbS/6KSWezYpz
 KLNywSl5aWw5pjZtNVy3whpDnQE4ehuww+/t0hvDaWdTfrw/IjTJYeXrH90XgNqYCfQhXmoSw
 L7HiYYetpqmj5zeosmUsG4AZAn3Js47YBoM4VPrvJQS3KiF2nb0AhCW913H1ayrZ+fo/jejbp
 3I3HiH4rgyUtjhVkaW7H0dplShz5LwdRAOkanFGacgXT6HntSaY9UmPjacybkzVe0nxf/Wujj
 zUI5G37cg4lNahqBn4LjokW5q0jPAxTZ2EVvJkz4GX0sgGtew5NTN6FU9p2Iaz9da+tb1Sjiz
 GOzKqk2p6A5AYh3RhyywGFs3RaE4mdNAidp36E69zvVhJoy9f2/leQNcfgi5K64NtKXtG6l5t
 ux0gyBS2my6Cb2Civryk40OtcFGA0ELfIr+7KvUsEk9fof+WDPtPM1gyr1V+Ci2IVxxJbpr6h
 TshmO1w/W7uS8g5SGFVynHzzjZnBpr/EAxy5vqOjVbf61BmsuahsohivLNVGa4EV133uDR/Vx
 3GvK1/P6GLUy36HOaB8Oi6AiBuOwKoxfj5dF6y5LAkRn5P0LREoSqbFP0AwBU6/27RUzHz62X
 1Ro5t0Bs3cjWsfL6IlKmpgOB2KOeo/jvEibYcj8PfPYJDjLk9AmXi+JakH+wupO9Enar7KtkO
 2ChLKE8fZqSSo9sjl7Whi2bI52P8beeb3V9Ao4ppf8rucyR7jDOPiEZGu9sbGbZjSdHZNklI7
 lKRQNyvQidfHY052TZwHP6rT1t2qaDSjwNNBfsc4EgXipcVj6707q3F812U5hc2rjKS2IWOeM
 TQzSjd29OtlZhB1TbQw2cdxa9DJq0Ng2RYKFPcY/QJdXBJnfBOksEU0lfikOJ3Kk6iiv7HLBS
 6uZye6NvrttJsIcR4SOEiBxUKkjiSDT70qYd6CdYgNlEVIQUbQg/FvcGZpfCFZdzFnqLvVhBa
 LJflfhO6ocSqB2Dy/Vo1/u25sZA=
Message-ID: <mailman.242.1694360359.3088264.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 9/10/23 15:56, Linux for blind general discussion wrote:
> This is an update to my gtorrent script.
> When the script runs it runs quietly and saves output to gtorrent.log.
> cut here:
>
> #!/usr/bin/env bash
> # file: gtorrent.sh - get torrents with aria2c.
> # dependencies: aria2.
> GF=gtorrent.inp
> if test -f "$GF";  then
>     aria2c --quiet=true --interface=eno1 --enable-color=false -Vtrue -lgtorrent.log -d/home/jude/Downloads --auto-file-renaming=false --allow-overwrite=true --bt-stop-timeout=60 --bt-max-peers=0 --bt-min-crypto-level=arc4 --bt-force-encryption=true --seed-time=480 --seed-ratio=2 --continue=true --input-file=gtorrent.inp

Wowe, you are the master of long lines, you might want to add at the end
of the command '|| exit $?'.

> else
>      echo "useage: put download torrent urls one per line in file gtorrent.inp and try again."

You are testing with '-f', which means that the else clause will be
executed is the file is not found.
The SCR is not testing to ensure that the file is correctly populated.

You should also exit with anon-zero exit value and redirect error
messages the output to STDERR.

To me this SCR is not to be used as such.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

