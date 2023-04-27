Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFBB6F0301
	for <lists+blinux-list@lfdr.de>; Thu, 27 Apr 2023 11:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682586212;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Z+vVO+D5yQpHrGIkHkBLm5em6femmnf8CqcWr/Gl7dI=;
	b=QZm4IQp+VKbOuK7FMEiJJ/tomM/xfWY3P3L2OvWs5V2LVi1GjjeDKkZEkNrjAyVmpzPPaN
	3wwJYrztxmRMGn4brDX9Phs/tyHN7WMMpVg8KS7WxIXHH15h7XwvgfCz0gEYeWyj5MIO1Z
	PP0pnMaJPBrKjJDOKDbkgHLdWTlVrKI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-515-bvBBvKNhMYCq-tJj83YOng-1; Thu, 27 Apr 2023 05:03:28 -0400
X-MC-Unique: bvBBvKNhMYCq-tJj83YOng-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5DAA101A531;
	Thu, 27 Apr 2023 09:03:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 178B22027043;
	Thu, 27 Apr 2023 09:03:22 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 64ED71946A50;
	Thu, 27 Apr 2023 09:03:21 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 27 Apr 2023 11:05:45 +0200
MIME-Version: 1.0
Subject: Re: Configuring terminal and referencing username in bash scripts.
To: blinux-list@redhat.com
References: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
In-Reply-To: <mailman.1671.1682536977.2351823.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:4G/B4HTGFKo=;fnaObQZzGsUVVxsEZUgLj/OSD3+
 ZjS9qEF3ANLAOtEpetUNNpNxh3s30ks8a4/NsvgU6ls+ez1gq9lDqwzIVync/rIyRHkh6Zuvs
 ufVRLC8JwGXn09rCmE9bMULdVfXl/try7aJOcRNyXTCLKx/FeiRqemgkrEkVDUSrpscPHkd3y
 3olsP1fRcX4a8nVvZ0jxHpHzyzrDg3DoCOLpZnn0iB2B9AnZ3pZ1/aFZqrxubWHS9S0T3PNLr
 z491phQJSlXNmEoVnJjVAhh3fIIRPyAZqL4NomBKDO/7XSiTqbKopUt8cOp0R1utu9uMianW0
 C07dYcGbmG7na+IlRaAuBWYX05I9hbDq2H2F7R2ZOFcWuFCTqNZChjLeROSGO3Eo3MC+kY14l
 rwHbsF1j78E0OjZH1Y0GiA/bcxv/9drzj/+vxJOFGY/Lbtp00sJPZjCTz1x4+OlTzM0+r8WsX
 LQReHlj/H1C0SbIAIXVeu12UOZBDi4y1sTAmTdsZCgTAnphHel2hUJq1oelqtseH9oglLMWyA
 hxh1yEXoA8qlRqEDHiGzhLZOOzRyki3hpTxcFtGziFxdUfMJHaee6wP88Q/GrP49Hkx/Qt+np
 fzysq73kHMfM7wodiL5a+DLbIITnJsRfP0shRydWZj5I6IF/Hertq9YJLWaPHUzexOJgqZmTx
 nV2/TCTYdt0r7uku82iikS5CvzpwiI8mYwXvEl6UFGpyVO5f9jGY5OHSTlhx6WyjEHKbEkQo1
 VFLkJlsW7NAqZIjfeNHEKfBCj/B9PioYgz1wOqh5JUMO+s+2V49pLh6umOkxheQGbpJQ8lmis
 hgMfGNwl+KjX5MqjHYlw1Qp+5CYA1OsRrbN6ZgDj1hQ9GTlOc172KCrAZJKSqNqxSjoGpSwx5
 bPgRyJP9G6OS0A7TST8VyR1zJsWRf+QZhBf+AyH97WR9bgBC0sWkZEIc4Hhfj76cSIrkZFzvN
 b5vnYDWc0BOrlXNSTKvvnEYH7ys=
Message-ID: <mailman.1815.1682586200.2351821.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 4/26/23 21:22, Linux for blind general discussion wrote:
> Okay, so I've been using a ~/.bash_profile file with the following contents:
>
> rm -f ~/.bash_history

$ history -c

> export PS1='$(tty | sed 's#^/dev/tty##')\$'
> export PATH=~/Programming/bash-scripts:$PATH

${PATH} is better when you create a string

> Also, I have some scripts to automate sshing into some remote hosts or
> mounting the remote filesystems locally, and part of it involves
> creating a mounttt point that needs to be chown to my user. Is there a
> shell variable I can use to make these scripts work for any user
> instead of needing to edit the script to use the name of the user I'm
> logged in as?

$ USER_NAME=$USER sh try.sh
$ cat try.sh
echo $USER_NAME

$ sh try.sh $USER
$ cat try.sh
echo $1

$ sh try.sh
echo $USER

$ try.sh -u $USER
$ cat try.sh
#!/bin/sh

while getopts ':u:' options; do
     case $options in
         u)
             user=$OPTARG
             ;;
         *)
             printf "Error: option %s not recognized at index %s\n"
$OPTARG $((OPTIND-1)) >&2
             exit 1
             ;;
     esac
done

shift $((OPTIND - 1))

echo $user

HTH.

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

