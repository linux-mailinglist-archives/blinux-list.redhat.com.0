Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B4869EF02
	for <lists+blinux-list@lfdr.de>; Wed, 22 Feb 2023 07:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677049035;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AKGUqPeu5OGTsc4cZ8QFdw9vyLgSEcdUKdV0DJETvcA=;
	b=YrJuoygpzBKDgj4fZBa+lnjrrQP8fMHFMZuVG44KSsKSJRDw3/1+csfrCjjKxa7AgcLIVP
	9kEtwxNOZ8r2lY9D9BfP+Fvo364j5bRQK1BRketoYuoo4ZJtKYQBoBOj3Zov79vAZNg0uB
	5yJMAFDIxLSMotIon1gu1+cZZBl9Dro=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-443-7-1ej1XsP3C8OZvcEc6YDQ-1; Wed, 22 Feb 2023 01:57:11 -0500
X-MC-Unique: 7-1ej1XsP3C8OZvcEc6YDQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCE031C426A1;
	Wed, 22 Feb 2023 06:57:09 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3E4351121318;
	Wed, 22 Feb 2023 06:57:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AA5C819465B1;
	Wed, 22 Feb 2023 06:57:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 22 Feb 2023 07:58:08 +0100
MIME-Version: 1.0
Subject: Re: brave with fedora
To: blinux-list@redhat.com
References: <mailman.73.1676547223.3517.blinux-list@redhat.com>
 <mailman.111.1676561327.3517.blinux-list@redhat.com>
 <mailman.877.1677014920.686539.blinux-list@redhat.com>
 <mailman.935.1677023694.686538.blinux-list@redhat.com>
 <mailman.854.1677028862.686535.blinux-list@redhat.com>
In-Reply-To: <mailman.854.1677028862.686535.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:wLgSuiCM4e0=;irH5O/taITjgjvx/5JGnlrjjhBX
 W8tR+5AlSrL80NiNADXcDuprKxDQZlxGfLo1k/+ABPBotlc2fEfjS9RDd7jdF3cqcrr5AnpO6
 iz+YMwchTKmZK7b3BnTukdeM1EN7RuPxUukAxOK2zdEo7K1g549u8rGV2PMmYzCtnMjCvyweP
 CGbTGZxkhz4+zmpWHKbg3E/ZYHxD31SOVtoArff3ZHTxuwSFctBJcSspWAcjEFJHGaimztWjI
 CJI0QY8e9vmugR7XWO3gvDGIim1fEHzTIsoR9Y+TrwO/9jWJ5XEkqBFESXJgWq1NaHY5eTcA7
 vGIldl/gaYZFg5MT8J7A24g2nTB36sKaZMh+nXNq2r3Y4sMx6kOIwU8Yze6ic4xJxdHYEs2Cu
 Sn8RTNfZiKZjHi1EyL2hJGHPmzkq48sg1ahes+qBkc77MywFuItu97wqp4YfRMqH+XvW075Ac
 3n3/5qyUWIXT4fJeq6CE4eTv1LxFYNTcNNgsLnEpRu7cWxV57fGcbvW7lbvQZUAflwiziNAtQ
 WjqnIoE2fb7n/M8UlDL/zny+t5C61H8YapTqg/4nDYxu/nJTUieP4pP53QbsPjK8Gpnrlva59
 EDfOilLebbADbZfH2izcKlogScWkkWuqzRJbREKUbIQaoCUgWYeeUqU4jgZ8kr3+fDuJxqEO1
 qrrT6AZYN/GF+ghsELZUiplzmn8NgPPHVf4IvJRVP6G+V08SdOzljOXuT0ioJZGDeSMq25DUP
 x1Mb6jmal0uIpZRYvcPA2gj4BbcGk2FVi3PYwbdSavJzPwaC22GnSwdP3yaH0EWN7GYuMrVzd
 BoVp8LdLEdMJwHG0ccn9x+l71rVO0qr2r/Jg/KlBnKN87DDLug+2vKKy0z61/RT5sXZnWl09k
 JFmNGIBLI9d1rSGC84ezyvuaxx2FshGAVDF2fT90LjeZ9AH+54CX38UvzkM1FbSPmV4HL71mg
 Uz9bHyBT5fptzJGw0mQmVS1PXTg=
Message-ID: <mailman.955.1677049024.686537.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

On 2/22/23 02:07, Linux for blind general discussion wrote:
> Tried that, no go.
>

- What did you try exactly?
- What do you see in the log?
- What are the file permissions?

--
John Doe

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

