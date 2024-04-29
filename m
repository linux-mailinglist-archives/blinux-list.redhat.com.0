Return-Path: <blinux-list+bncBDX2LR4P5UIBBJWBX6YQMGQEEGO65OQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C728B60DA
	for <lists+blinux-list@lfdr.de>; Mon, 29 Apr 2024 20:02:17 +0200 (CEST)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-22ebac1257asf4738582fac.0
        for <lists+blinux-list@lfdr.de>; Mon, 29 Apr 2024 11:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1714413735; cv=pass;
        d=google.com; s=arc-20160816;
        b=lI5w5xUK3yqXBUUeUkcDgWdcoZfNSQlmNNEJ72rVF1kO47Co5b/3dhOQqhDpuVhVPR
         rOZHj81Zooz2DkZSfEtyEYqvSOYLj79T0mjybKqfb9MYYX9vU0FaMON8MJjqXpIm52Mw
         touMwM7v6dZIbhYGv40ktiSAtv29ZBK0ke2ZVmtRZe5PqFONQLc3Vz8C9wikQQYz+TIy
         5vBq2gt+lrIt5dQlk0GJYWWQqfXM31KDSN0PAbb6Q7yoH63RZiFZrMdy9zuta5T09Jf7
         610esEzFQ3VuVpXKieF+HyUvhNOxgqg454aIyFW8FEobAoOgf/1SEeDpIyAT8UzYWeNz
         5Ciw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=NXMNQTSk7J9Duf200gAg+asV19G1/zGdLj6NG57Be2Y=;
        fh=CT+63tpixbYOykF83LmCFWL897QTkW8HL9fKqBBS5YQ=;
        b=YNE3pOg91y8Kf3bLyivuQk5UFzOStc3LNIf9F7X+nZ5EUQOs7K8tiKTwmMtdknwt6y
         QKQuD/KENUvJYkWmmU3HWu2z1ECYFrk3J/HOANNahySqKPD3NWPRvQw3EDk2INiq7dx2
         yV498Ln0hlhRsgBInMDyBAAX1Y89UuP4D2RH+Qi1nTBlaTh0ikfrMR8jAFqSQyirQ31S
         oJqh6jeBjUhL47tiZHGT6pigfCCBQ2WdYbOzW1KrbZAfpthBDa1TTSgyxegELIgybvIv
         jVgwvNc+wvDMJIoH1RQmdWECNY38IPGaRw8lTXdXoKcES2OcRZuAVgGOlht5e37nbNbL
         gXqQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 50.116.61.232 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714413735; x=1715018535;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NXMNQTSk7J9Duf200gAg+asV19G1/zGdLj6NG57Be2Y=;
        b=lHmJRabKqbukmOZHUrMws8uxSZGGfR3lLKo/kYu66Yot7GVnM6oEciEd8TZrZ1AW0p
         TNt4+NQiQRzlk/nIhx1YahpSo3zZS8wnnCJW3KBIasvNc9N7QFONXryp7o6x0r+jllFw
         8PDsi0eBgvgfdNsiyfUxKOGFcEJq+0AEPGbx21dKk24QjrRvLWde+H8LkJp65pmoGU7r
         NXNadRH2Z6C8vSnGrSkLmfSMv0ARXkLvIh52ctiBFTUYWZ/jXb0s6CCHTu5/wm3uHVv2
         FdE1joNhBk5O9wzaw8yAiEx1b6V1HKXu9cYu74HMOm94xnoFHVYCRfqaFQO6/65Ln2vn
         3pSQ==
X-Forwarded-Encrypted: i=2; AJvYcCUlE7ny/NQHkAJE8wGnD+2kTaV7w+idTlpwc7tSKnXq2WNVjwdTBAl3m5UU1tjw5Q1k2MhLThLAJvKgAqUpEHF391CHOrq12ofs
X-Gm-Message-State: AOJu0Yx+XL6WfGidXg7niNc7s/u8X6kXDG0+GWxOtVLj0oh5z7T5FapC
	j2V7fsLvSd60x5gjkhrspOdZ4XtQpPt0ROwZlpxI4aqPoH/i9pSgVjfnAKrPeDk=
X-Google-Smtp-Source: AGHT+IEXjUlauF7ITRINNvaCJ17MyS5zYaUi49b3VhANrKqFIWh5s3jBHhnGEwdhpCXa7FZLtLTT5Q==
X-Received: by 2002:a05:6870:a79e:b0:23c:7b6d:38ca with SMTP id x30-20020a056870a79e00b0023c7b6d38camr543730oao.35.1714413735294;
        Mon, 29 Apr 2024 11:02:15 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7d96:0:b0:43a:d39a:5a36 with SMTP id d75a77b69052e-43ad39a5c0als4843211cf.1.-pod-prod-02-us;
 Mon, 29 Apr 2024 11:02:14 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUAAf56+8Zqaw4/7XUIRYqTJSESpFhpI20ykb12ARqF1kyhIXcvT0XdtAwJfLHdpVGzRNbDGYnz8JeQnkAQKCQmV3OtKAR9yEaSd5nO
X-Received: by 2002:a05:622a:1213:b0:439:b8b6:ce31 with SMTP id y19-20020a05622a121300b00439b8b6ce31mr333316qtx.5.1714413734084;
        Mon, 29 Apr 2024 11:02:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1714413734; cv=none;
        d=google.com; s=arc-20160816;
        b=gJLVaYulNUgLiCUHKbkIsC6XbB81f7VR5onBJnbJ/dVwzCdcHfZcBoisM9TCRTDuO7
         7ylNiNEu1527LpHWnvCUwuO1p0UkjfjfIUsRx/7U1OMJPUkK1bMmTyycRa6TGcZI0HTq
         HhJ8Nlf54QRUs5L3qK+FXrnqQFGWjmLAeBViA4MmPui+xHLER3iKS067a+uViegfIY8z
         6dqqXKF9tU3RM59n8DQsPhMBzHr+/u8SL1ufRjBstowWkkrlSu4GtnUFWb9ZRv4D6okZ
         k77FYSIThVh/T8jv+hmOXkUNqkq3aGZ5lDZfKTxkpu7fMzGK/Xn+9f/YK5RZ90DOq9f0
         YV6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=K2Ap7cxSTipU7E3FqWQ5lOTubqcWsxaPa6XDIf0nqgI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=v1UPR51OxhdpfQ8e8N5ouEPVF/vmQfygprfQjMaxvY27L32B0iv+6oPw2vKL5DqV8f
         V96SbATN+hR0v2umq/9W3idYo5JKUyhHh7FyIIK+YCI3YYZyNYdtSbiUgp+T//bN9Kzj
         z29cruhR0Uj4VIeSVbCZfoMDc4lQNGG1HmAhfzgQDgEWtUWPlYOzK91Kw7xL4lhvpobo
         gO9QXcBHpQyQKLQ1H2T+e7AWP2tfapXg7XETj4WS3AC99FnJSxmS/y7elTEYkW9+4GNK
         xZ244M+EOkmXA85xoworLF8QdqIvKjcatNFkUg5qcTsmqUaUAMl2W6vyuYFsvZuJomaD
         UlsQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of geoff@quitelikely.com designates 50.116.61.232 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id k5-20020ac85fc5000000b0043b0486a172si1625468qta.224.2024.04.29.11.02.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 11:02:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of geoff@quitelikely.com designates 50.116.61.232 as permitted sender) client-ip=50.116.61.232;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-99-2sAa-c54NK6fp_UK1XiIjQ-1; Mon, 29 Apr 2024 14:02:12 -0400
X-MC-Unique: 2sAa-c54NK6fp_UK1XiIjQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBA7110112BE
	for <blinux-list@gapps.redhat.com>; Mon, 29 Apr 2024 18:02:11 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D87AC40C6CC1; Mon, 29 Apr 2024 18:02:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A080140C6DAE
	for <blinux-list@redhat.com>; Mon, 29 Apr 2024 18:02:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 489018AA383
	for <blinux-list@redhat.com>; Mon, 29 Apr 2024 18:02:11 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
 [50.116.61.232]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-350-s_FDON9bOQKQ-QjB_lE7Fw-1; Mon, 29 Apr 2024 14:02:06 -0400
X-MC-Unique: s_FDON9bOQKQ-QjB_lE7Fw-1
Received: from [192.168.194.128] (unknown [176.230.59.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 56BE38147E44
	for <blinux-list@redhat.com>; Mon, 29 Apr 2024 17:56:54 +0000 (UTC)
Date: Mon, 29 Apr 2024 20:56:52 +0300 (IDT)
From: Geoff Shang <geoff@QuiteLikely.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Autible books and Linux?
In-Reply-To: <44d70233-0be7-4067-8d75-672ef2bae651@gmx.it>
Message-ID: <61301feb-ccab-85d0-1bd6-7a9e5b27cfc8@QuiteLikely.com>
References: <Pine.LNX.4.64.2404260913230.1920571@users.shellworld.net> <44d70233-0be7-4067-8d75-672ef2bae651@gmx.it>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: quitelikely.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: geoff@quitelikely.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of geoff@quitelikely.com designates 50.116.61.232 as permitted sender) smtp.mailfrom=geoff@quitelikely.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi,

disclaimer: No copyright infringement or circumvention is intended by 
offering the below.

Here's how to convert Audible books losslessly to something more usable.

You will need ffmpeg 2.8.1 or higher for the conversion.  You will also 
need to use git to get Audible tables for RainbowCrack for getting your 
activation code (this only needs to be done once per Audible account), 
which I will explain below.

Here's what you need to do:

1.  Log into Audible and download your book in .aax format.  I've not 
checked but I expect that you will need to use a graphical browser to do 
this.

You need to get a book first so that you can get your Audible activation 
code.

2.  The following needs to be done only once per Audible account.  Even if 
you use the same login for different countries (e.g. Audible Australia and 
Audible UK), the same activation code seems to apply.

If you've already done this, go to step 3.

This bit is a bit fiddly, so if it looks a bit daunting or you can't run 
the rcrack binary, you may want to get someone you trust to do it for you, 
particularly since you only need to do it once per account.  You will only 
need to send that person the checksome (see step 2B), not the book file.

A.  Get the Audible tables for RainbowCrack:

git clone https://github.com/inAudible-NG/tables.git

Note that this includes an ELF executable for x86-64.  If you're running 
on some other architecture, you may be out of luck as I don't see any 
other architectures at project-rainbowcrack.com.  Anyway, a bit of digging 
may well turn up something.

This will likely generate a directory with some files in it.  The 
directory on my system is called audible_rcrack_tables and I'm assuming 
this was generated automatically (i.e. that I didn't call it this), but I 
honestly don't remember.

B.  Get the SHA1 checksum from the Audible file:

$ ffprobe book.aax

The end of the output should look something like this:

[mov,mp4,m4a,3gp,3g2,mj2 @ 0x1dde580] [aax] file checksum == 999a6ab8...
[mov,mp4,m4a,3gp,3g2,mj2 @ 0x1dde580] [aax] activation_bytes option is 
missing!

This example is taken from the tables documentation.  As I recall, the 
actual SHa1 checksum is a lot longer and obviously doesn't have the dots 
at the end.

C.  Get your Audible activation code.

Change into the directory that the git clone created in step 2A (on my 
system it's audible_rcrack_tables), and run the following:

$ ./rcrack . -h <checksum>

Example:

$ ./rcrack . -h 999a6ab8...

The end of the output will look like this:

result
-------------------------------------------------------
999a6ab8...                               xyz   hex:CAFED00D

In this example, the activation code is CAFED00D

3.  Now that you have your book and your activation code, you can run the 
following:

$ ffmpeg -activation_bytes <code> -i book.aax -vn -c:a copy book.m4a

This should result in an M4A file with exactly the same data as the 
original audible file, so there will be no quality loss.

Of course, if you'd rather some other format, you can use ffmpeg to 
convert to it.

Notes:

1.  This outputs the Audible book to a single file.  The chapter 
information for the book is included in the conversion, ffmpeg and ffprobe 
will show it.  But I've not found anything so far which makes use of it to 
allow chapter navigation.

2.  Searching wil dig up several command line hacks to split the file into 
chapters, but ffmpeg doesn't appear to have the ability to do this 
natively, which seems like an oversight to me.  I've not tried any of 
these hacks, but I don't see why they shouldn't work.

3.  I recently read about M4B format, which is simlar to M4A but is more 
suited to books.  I believe that ffmpeg can convert to it, but I've not 
actually tried and I don't know if the chapter info will be more useful 
there than in an M4A file.

Good luck!

Cheers,
Geoff.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

