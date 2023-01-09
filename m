Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E933661EE1
	for <lists+blinux-list@lfdr.de>; Mon,  9 Jan 2023 07:56:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673247382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p+bZjYMbjLYBwCYe/rZHy/L9mis/gphZoo7Y4jHJerw=;
	b=hxsxj0gsZquqhZ2ipikAh9Ch+E+JN8cBVxfJdQcw/JOtmDFWzRIWfnF2GDutnRwdRgbUux
	UQBf9MQcsjo6+VYu3e5CxPT8ojbB53SwkZnEr5/i3lKqxXEVcL7ujPxbSOhc4fCQEmg0dm
	w6fJrx1lu9nc78yPV2K4EZ1N/4rDck8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-2EeMOV70MCS7sJ_lurKYLw-1; Mon, 09 Jan 2023 01:56:19 -0500
X-MC-Unique: 2EeMOV70MCS7sJ_lurKYLw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E048C802D1B;
	Mon,  9 Jan 2023 06:56:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9693E492C18;
	Mon,  9 Jan 2023 06:56:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 12F1E19459E0;
	Mon,  9 Jan 2023 06:56:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 9 Jan 2023 07:58:25 +0100
MIME-Version: 1.0
Subject: Re: check for existence of file
To: blinux-list@redhat.com
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
 <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
 <mailman.3602.1673203492.2515669.blinux-list@redhat.com>
In-Reply-To: <mailman.3602.1673203492.2515669.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Oyn96y00DKs=;J0UOd45fhAUNIWDwXHTxFXhyXfr
 fBVzeffNWOxZejEQvEhcmw22xYfix7djZIvvKinJgtg6+6002+K4fm4lN99Fcb1eNguv7vV/C
 n7IHlQRYUo/eMECpTkcrXOi5kQ1CHmnm/BEwPLS34JTfwaDwVtMykVxO8YXVp1QXBxz1szFpM
 9u7xV8/BTmzZHOIqQTtLkIBAPIkIggKIAKrwSC03c/Z+k5FG931m0YiluuFeMV2+Lrm7V9K4Y
 M/wsL6l7R7Xmge8uVCDaMh46lRegEMgHlVxQ4waZfFQqRzWJ/7mFHqrJJD5G0dYVVA/ysW4p1
 nVLw5RfkjTE4nwIW5tm/IgH3wMQL+JjIkQpSfVYsaOUiVl4uZPWzUskkTU/w2nzJgauQNV4oD
 i2136F7335ZFA8Pb/LpmbTrV13Y/toDQh9c2XEjsJ8DU/3dbsgOydseW97g1LmBm8y5D5ghda
 TDScKWgdpd1kA/PjDwQvfsrAaPhoP/n0tzl8CyShb3pCoD/jzFaFkN3fhM7BgP1yHh+H3VQwf
 xN/4Y/TqZkTZqdzFZpR22exNwIk2RcrxRLowjWK/MUYm0BFR6tXvxsHeyPdEK+xclIbkp6Jfl
 4JOnxa2Yr+xHeC87AQCrDuAOBvCDtF1bWuQq3H6KG0ykLHAHTtIB24VSJW2akWLGzEaIhn/RZ
 rZRU17XNvL+tHGEelAfeTqBrp67V608jpn/+wOk8PVAlRWBiYacf0zaF0DmhRud7SqnUNu8pr
 0OEvLZ4fIgoRyA4vanh7XXsz4JImE397Z90O7BTMJtwGKYsa6/dQ5xaAI8NNZrwqIvyVzcLzT
 ph7IwPypMZ6jVe+urvT17shlW3apq5F13J5uTO0lPryDSd+2IoJbITrYi1An8qDp5TiHHfdY4
 kSlIuR2JOYMQ9mCDoSwnkzsNKcOXxmXvdRYAHAKIojld2RPBL2iTKx/qKS6o4atQOQy36BJV4
 d3NFVlNUvoa6XeeeuJ9Ykq7BfYU=
Message-ID: <mailman.3537.1673247370.2515660.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 1/8/23 19:44, Linux for blind general discussion wrote:
> Tim here.  Git does particularly poorly with large binary files
> (like a .ISO file), so I'd hesitate to reach for that as a solution.
>

My point was simply for the modified bash file to be tracked in Git
instead of having multiple e-mails in this thread with the wget CMD that
the OP was using! :)

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

