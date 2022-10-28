Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D47A26118DB
	for <lists+blinux-list@lfdr.de>; Fri, 28 Oct 2022 19:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666976826;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PXTjgJJuvfPkpETDZEG4XL2SKEvrG/V6le/nCYqKr5U=;
	b=eSiEOm7wNBbV2poATik1p7fPhnsn+GFv2FivMIjV4JKN12Q4nsR9uriRuNXWTqzYGWCd8n
	k7zZ7IJFv+CD+2EmB4dVRATa4vo4I4ZvQKHu4txdWP/Rij30E49vMZAt+HbEkBLk+DRzGS
	a8TfXDXDl5cRJCYq3q/SAC7YKofH7m8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-38-njSITYHgPzeKeC_6kBtOag-1; Fri, 28 Oct 2022 13:07:05 -0400
X-MC-Unique: njSITYHgPzeKeC_6kBtOag-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A7A8833AF9;
	Fri, 28 Oct 2022 17:07:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 43D61C15BA8;
	Fri, 28 Oct 2022 17:07:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DF1571946A7F;
	Fri, 28 Oct 2022 17:07:00 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 28 Oct 2022 13:06:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: better way to extract dvd audio with ffmpeg
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3402.1666971107.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.3402.1666971107.3004.blinux-list@redhat.com>
Message-ID: <mailman.3263.1666976820.3010.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I just noticed that you are trying to extract only the audio, or 
possibly transcode it. I do believe vobcopy may still be able to help 
you, since you should be able to pipe the output to standard output and 
straight into ffmpeg, which can either copy the audio only or transcode 
it to the format you want, thereby saving space on your hard drive. This 
example worked for me to extract an mp3 version of the title I wanted 
from a DVD. You can adjust it to fit your specific needs.

vobcopy -l -o - | ffmpeg -i - -vn -c:a libmp3lame -b:a 128K audio.mp3

Hope this helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

