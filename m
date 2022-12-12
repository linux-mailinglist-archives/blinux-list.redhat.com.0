Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0836B6497A7
	for <lists+blinux-list@lfdr.de>; Mon, 12 Dec 2022 02:21:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1670808112;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KhSK5fCQwkVARObors5aZoyg27vqIqBwH5yLshvTz8Q=;
	b=I4UMgSvjWoa+ctxPwoFSgRcGiHyS/bc8w/EkQWlzYo+AYxSYKL/omoIopv31aFQwpwSGOL
	53hEDhec5q67S1g9PPAjnz2zvKi2Mrazj3eEdqYmdIS0ks+lqu7U8ve23smdqiOznSdyEJ
	wyk3C+rBmUkcEtusKE2mIYayLrP469s=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-630-YN6zdNdYN5KjVYeAxRTLfA-1; Sun, 11 Dec 2022 20:21:49 -0500
X-MC-Unique: YN6zdNdYN5KjVYeAxRTLfA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BD9F185A79C;
	Mon, 12 Dec 2022 01:21:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 2022740C2065;
	Mon, 12 Dec 2022 01:21:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 73AFD1946595;
	Mon, 12 Dec 2022 01:21:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: bash script question
Date: Sun, 11 Dec 2022 20:12:38 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.1629.1670808097.7716.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,
I have a question about bash scripting.
Can someone point me in the right direction?
I want the script to loop until the correct response is given, but I cant get it to work. see code below.

#!/bin/bash

quiz() {
  echo "Starting quiz..."
  echo "What is 2+2?"
  read response
  if [ "$response" == 4 ]
  then
    echo "You got it."
   else 
    echo "That is incorrect."
    until [ "$response" == 4 ]; do
  fi
  echo "Begin math quiz? (y/n)"
read response
if [ "$response" == "y" ] || [ "$response" == "Y" ]
then 
  SECONDS=0
  quiz
  echo "The quiz took you $SECONDS seconds to complete."
else 
  echo "Exiting..."
fi


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

