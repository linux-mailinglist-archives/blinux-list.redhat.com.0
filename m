Return-Path: <blinux-list+bncBDWLFR556YFRBE76WOVAMGQEGW7PZYY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mail.lfdr.de (Postfix) with ESMTPS id CD00E7E6DF9
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 16:47:32 +0100 (CET)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-5a828bdcfbasf13958357b3.2
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 07:47:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699544851; cv=pass;
        d=google.com; s=arc-20160816;
        b=K5xnOtLU3zrqqE3ZirM1aqCN3ofkOnLZYNCJm6hvuXGj1mUvpsbXgJrb0r1HzBWPYu
         8gFuUuyEGptjLQIZShFnImgwZbgkSat8HrxyoMrIYOwQgT39njaVxxNYjfTA5+IM52TR
         Rsk+Ld5Uqd7pE2JlHttoqhPxda8U2Ci8BgfsO0g5RjCQpQNPGzLFz1tzADzuNMSwKJGG
         cnEc+ph9bSBOgEE+/bvkOjd6J6v3+Wdb2MG5WxVsld6WMG6bs2tld8aqLrQ1IYJ4ok9N
         4L3W/+x8ftrrhZ8OWtV2xw3NR+66y45H6e/XNw7O5qSj2ZpQzntMClH4RDhVImA641ae
         Qo6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=3L/hNhYEcLhPkLwQOB7290KlabhjuioW1uGeZfv9Xh4=;
        fh=fH8a4lfLeqjuUrgBmtPKNRAuTgZRbLa/nO/G3widhbs=;
        b=hm+Vh4vTC1OiXxPNQHt6YK8N7av63c1vTeqKtFYhhA0/+yd//uv0Mrx5Pan80HvQCm
         YVM7f4apHIVuqmkru8cgMV7tm3ogOp7IXLNnaHoFT3e4WlJbp+/R2DJi0K3SWfk3+bx4
         xUd5fkOaHZ6Nj56Xwe24A41p9FY9Isb2kgQQLktBWACj1yUqLr/qsbYSTO/tpkU7OIrq
         5Fc/uwR1EPaiB24abj9b3vc2fXKvhsTt1AHZynITYdO3d/UFfRdfxPmjz4wgLKHsNq/D
         0xIGmCLf6DKjfTW7zm91Qw+sG/odfKt8jaYCg7PsG+hngWHHcOtXKKUfnlcYV+WymJXw
         L0SA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.167.45 as permitted sender) smtp.mailfrom=r.d.t.prater@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699544851; x=1700149651;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3L/hNhYEcLhPkLwQOB7290KlabhjuioW1uGeZfv9Xh4=;
        b=QYhZmXcC2SCUAm19MSXLiD0XMYiaZJx2SGf5kyB9EdSx9ndpKiw/CQYu6hmHnnvb7w
         bXN8ZJNDZqK0dL5V/i5UxvkIZvPq1h4lbVx/g9VERDbapu/PFYGAXowYVPDq/f9l53xA
         h3V8sJetSeK91mWxiuSKeJXaohlgzj6WMmuhV9AKfdLO0Jv1icF+XJMTD3sfAxLmx7ie
         +MZJXZZgNj8e5yJCfj0w3MLRaGAbE8Asvo7nqhjtkveGdwSB4d46ARmt679ywp9DDHcE
         alt87Z8Pr6x+6fjMDnBGWGf5vivRBuP0TYskniv/5suK67wVQGMQQc5du4wkJeWdJ5fm
         r37w==
X-Gm-Message-State: AOJu0YzFSeqvHXh+aQtOJ3VWlPwxM2/LcuO7yDylUqPkZuPWUjTWnITv
	8gvK/VZ4y3dX3IA15ErJB46x9w==
X-Google-Smtp-Source: AGHT+IFybBHBjO/+/yE6I79sPTS2NVM29HiG7I5Vb57Tl0n2BKxNEN6bpzwK0vg6Yqcw44sirMY50Q==
X-Received: by 2002:a25:da43:0:b0:d9c:a3dd:664e with SMTP id n64-20020a25da43000000b00d9ca3dd664emr5751017ybf.56.1699544851343;
        Thu, 09 Nov 2023 07:47:31 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:19a2:b0:41e:89db:416 with SMTP id
 u34-20020a05622a19a200b0041e89db0416ls1357762qtc.1.-pod-prod-09-us; Thu, 09
 Nov 2023 07:47:30 -0800 (PST)
X-Received: by 2002:ac8:7dcf:0:b0:41e:29ac:1300 with SMTP id c15-20020ac87dcf000000b0041e29ac1300mr5459978qte.27.1699544850480;
        Thu, 09 Nov 2023 07:47:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699544850; cv=none;
        d=google.com; s=arc-20160816;
        b=JWOKhuCB1EMhduO4C68UvW3LbEL4OdeoNVLJrtq+lJJmLNe7XJ6aIQ6+Ur/K4Cv+2R
         WszjIvPbIM+WrvvoWXOOEOUA2eZd/2i9xIvokFHO222D8kDM/vkOTpp4HaiwTKywWgea
         BJsjkb+cHAISejVkcVeL60Bd/pDfVy7ARZZU6mh1XQe1ntCtInFdmeh+ogxYwDiFl5PI
         6w9jwGZnLSswMZKsYJ699HMi4oMO4yYiSpbCPhAqSHMQ5Cw7huEuQoisKAfH8yKbcqnW
         INAG5Ehsm+/da81AYkOVcnD4XYko1GULK504W2lgv36Fj4DXfaEDMocG8ZfYcLnaB12+
         AD6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=xWcZj+w0xfY9Jd25XDNKOPtQltatVqIXNz3811KDsL8=;
        fh=fH8a4lfLeqjuUrgBmtPKNRAuTgZRbLa/nO/G3widhbs=;
        b=0mLnd5rlnDT/Ew9BuQp9M2cMNrkSyDHB4wJ5JzHgebaPI763TFz1vQujCaXQEwbRza
         Gz9mspuG8KvV6ngB6t6BQzE7aK8MnLazgWJ95ObQ4B6FsGzp/lqM6VUhthDzdqtDjJUa
         hA31vfRQbmo+bVZXQIuHT/KWRD+CfQnxNQg7KL/s3pemN0g32Uye0J60ePPsJpFupG/h
         1NVCww4hvhVpmj071LaCK6axrFcA9pAMX6BOWXcWhyC05nY/8Vzj0YN2/kTdTaL7Wsoo
         qHAqCOH5ohh6O5c7GeIWAwf6dmn9l7zuaEZFaoXwf1GO5Cqgv503a78JlL+MPoAJgaQa
         5c2Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.167.45 as permitted sender) smtp.mailfrom=r.d.t.prater@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id c2-20020ac87d82000000b00403bfdaa607si3110641qtd.777.2023.11.09.07.47.30
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 07:47:30 -0800 (PST)
Received-SPF: pass (google.com: domain of r.d.t.prater@gmail.com designates 209.85.167.45 as permitted sender) client-ip=209.85.167.45;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-539-7n1awz2gML6WfagvUo1ezA-1; Thu, 09 Nov 2023 10:47:29 -0500
X-MC-Unique: 7n1awz2gML6WfagvUo1ezA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D07B9803CA5
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 15:47:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CD33019E93; Thu,  9 Nov 2023 15:47:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4E9719E94
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 15:47:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 83DD1383DC5F
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 15:47:28 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-311-YQ96ployOT-ROoPyH_RmHw-1; Thu, 09 Nov 2023 10:47:24 -0500
X-MC-Unique: YQ96ployOT-ROoPyH_RmHw-1
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5079f6efd64so1229877e87.2
        for <blinux-list@redhat.com>; Thu, 09 Nov 2023 07:47:24 -0800 (PST)
X-Received: by 2002:a05:6512:1243:b0:509:fbf:f235 with SMTP id
 fb3-20020a056512124300b005090fbff235mr2303110lfb.6.1699544842848; Thu, 09 Nov
 2023 07:47:22 -0800 (PST)
MIME-Version: 1.0
References: <3161637b-cca3-4215-8cf4-941897c92477@protonmail.com>
In-Reply-To: <3161637b-cca3-4215-8cf4-941897c92477@protonmail.com>
From: Devin Prater <r.d.t.prater@gmail.com>
Date: Thu, 9 Nov 2023 09:47:08 -0600
Message-ID: <CAGJxbF4Oz5qjO94Q1O2r7WjbNBZvx+pEM0-GoO4SRbq++Oi0pg@mail.gmail.com>
Subject: Re: vision, get GPT 4V in your terminal
To: Rastislav Kish <rastislav.kish@protonmail.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000a34e8a0609ba1e7f"
X-Original-Sender: R.D.T.PRATER@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of r.d.t.prater@gmail.com designates 209.85.167.45 as permitted
 sender) smtp.mailfrom=r.d.t.prater@gmail.com
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

--000000000000a34e8a0609ba1e7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wow, this is going to be amazing! Imagine having this in OCRDesktop! My
only issue with it is when I try to add a system message with -s, I get:

Traceback (most recent call last):


  File "/home/devin/.local/bin/vision", line 180, in <module>


    main()


  File "/home/devin/.local/lib/python3.10/site-packages/click/core.py",
line 1157, in __call__

    return self.main(*args, **kwargs)


  File "/home/devin/.local/lib/python3.10/site-packages/click/core.py",
line 1078, in main

    rv =3D self.invoke(ctx)


  File "/home/devin/.local/lib/python3.10/site-packages/click/core.py",
line 1434, in invoke

    return ctx.invoke(self.callback, **ctx.params)


  File "/home/devin/.local/lib/python3.10/site-packages/click/core.py",
line 783, in invoke

    return __callback(*args, **kwargs)


  File "/home/devin/.local/bin/vision", line 161, in main


    response=3Dconversation.generate_response()


  File "/home/devin/.local/bin/vision", line 112, in generate_response


    messages=3D[message.render() for message in self._messages]


  File "/home/devin/.local/bin/vision", line 112, in <listcomp>


    messages=3D[message.render() for message in self._messages]


AttributeError: 'str' object has no attribute 'render'. Did you mean:
'center'?


Devin Prater
r.d.t.prater@gmail.com




On Thu, Nov 9, 2023 at 6:48=E2=80=AFAM 'Rastislav Kish' via blinux-list@red=
hat.com <
blinux-list@redhat.com> wrote:

> Hello everyone,
> ever since Be my AI demonstrated the capabilities of GPT 4 for
> understanding the content of images, which is not a single bit less
> impressive than its textual abilities, I was looking forward to having
> an API I could use.
> Because this brings awesome potential for various use-cases, though also
> for economical reasons, Be my AI is not on Android yet and I can't
> really afford spending $20 monthly on a ChatGPT + subscription.
>
> Three days ago, OpenAI finally introduced a vision API, and here is my
> really simple, but working Be my AI in terminal:
> https://github.com/RastislavKish/vision
>
> Have fun. There is a lot to enjoy!
>
> Note: Uploading images can take a while, though if it apparently takes
> too long, it's likely frozen, OpenAI is dealing with a lot of demand
> after their dev conference on six-th November, so chatGPT is down from
> time to time. My script is not very well prepared for this at this
> moment, I may add proper timeouts and retry options if it becomes too
> big of an issue, though I rather expect things to calm down again as
> things get resolved on the OpenAI side.
>
> Best regards
>
> Rastislav
>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "
> blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000a34e8a0609ba1e7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+V293LCB0aGlzIGlzIGdvaW5nIHRvIGJlIGFtYXppbmchIEltYWdpbmUg
aGF2aW5nIHRoaXMgaW4gT0NSRGVza3RvcCEgTXkgb25seSBpc3N1ZSB3aXRoIGl0IGlzIHdoZW4g
SSB0cnkgdG8gYWRkIGEgc3lzdGVtIG1lc3NhZ2Ugd2l0aCAtcywgSSBnZXQ6PGRpdj48YnI+PC9k
aXY+PGRpdj5UcmFjZWJhY2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6IMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJy
PsKgIEZpbGUgJnF1b3Q7L2hvbWUvZGV2aW4vLmxvY2FsL2Jpbi92aXNpb24mcXVvdDssIGxpbmUg
MTgwLCBpbiAmbHQ7bW9kdWxlJmd0OyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+wqAg
wqAgbWFpbigpIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
PGJyPsKgIEZpbGUgJnF1b3Q7L2hvbWUvZGV2aW4vLmxvY2FsL2xpYi9weXRob24zLjEwL3NpdGUt
cGFja2FnZXMvY2xpY2svY29yZS5weSZxdW90OywgbGluZSAxMTU3LCBpbiBfX2NhbGxfXyDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCDCoCByZXR1cm4gc2VsZi5tYWlu
KCphcmdzLCAqKmt3YXJncykgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIEZpbGUgJnF1b3Q7L2hvbWUvZGV2aW4vLmxv
Y2FsL2xpYi9weXRob24zLjEwL3NpdGUtcGFja2FnZXMvY2xpY2svY29yZS5weSZxdW90OywgbGlu
ZSAxMDc4LCBpbiBtYWluIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
PGJyPsKgIMKgIHJ2ID0gc2VsZi5pbnZva2UoY3R4KSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8
YnI+wqAgRmlsZSAmcXVvdDsvaG9tZS9kZXZpbi8ubG9jYWwvbGliL3B5dGhvbjMuMTAvc2l0ZS1w
YWNrYWdlcy9jbGljay9jb3JlLnB5JnF1b3Q7LCBsaW5lIDE0MzQsIGluIGludm9rZSDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCDCoCByZXR1cm4gY3R4Lmludm9r
ZShzZWxmLmNhbGxiYWNrLCAqKmN0eC5wYXJhbXMpIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgPGJyPsKgIEZpbGUgJnF1b3Q7L2hvbWUvZGV2aW4vLmxvY2FsL2xp
Yi9weXRob24zLjEwL3NpdGUtcGFja2FnZXMvY2xpY2svY29yZS5weSZxdW90OywgbGluZSA3ODMs
IGluIGludm9rZSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+wqAg
wqAgcmV0dXJuIF9fY2FsbGJhY2soKmFyZ3MsICoqa3dhcmdzKSDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxicj7CoCBGaWxlICZx
dW90Oy9ob21lL2RldmluLy5sb2NhbC9iaW4vdmlzaW9uJnF1b3Q7LCBsaW5lIDE2MSwgaW4gbWFp
biDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8YnI+wqAgwqAgcmVzcG9uc2U9Y29u
dmVyc2F0aW9uLmdlbmVyYXRlX3Jlc3BvbnNlKCkgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIEZpbGUgJnF1b3Q7L2hvbWUvZGV2aW4vLmxv
Y2FsL2Jpbi92aXNpb24mcXVvdDssIGxpbmUgMTEyLCBpbiBnZW5lcmF0ZV9yZXNwb25zZSDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoDxicj7CoCDCoCBtZXNzYWdlcz1bbWVzc2FnZS5yZW5kZXIoKSBmb3IgbWVzc2Fn
ZSBpbiBzZWxmLl9tZXNzYWdlc10gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPsKgIEZp
bGUgJnF1b3Q7L2hvbWUvZGV2aW4vLmxvY2FsL2Jpbi92aXNpb24mcXVvdDssIGxpbmUgMTEyLCBp
biAmbHQ7bGlzdGNvbXAmZ3Q7IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxicj7CoCDCoCBtZXNz
YWdlcz1bbWVzc2FnZS5yZW5kZXIoKSBmb3IgbWVzc2FnZSBpbiBzZWxmLl9tZXNzYWdlc10gwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyPkF0dHJpYnV0ZUVycm9yOiAmIzM5O3N0ciYjMzk7
IG9iamVjdCBoYXMgbm8gYXR0cmlidXRlICYjMzk7cmVuZGVyJiMzOTsuIERpZCB5b3UgbWVhbjog
JiMzOTtjZW50ZXImIzM5Oz/CoDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGJyIGNsZWFyPSJh
bGwiPjxkaXY+PGRpdiBkaXI9Imx0ciIgY2xhc3M9ImdtYWlsX3NpZ25hdHVyZSIgZGF0YS1zbWFy
dG1haWw9ImdtYWlsX3NpZ25hdHVyZSI+PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGRp
diBkaXI9Imx0ciI+RGV2aW4gUHJhdGVyPC9kaXY+PGRpdj48YSBocmVmPSJtYWlsdG86ci5kLnQu
cHJhdGVyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnIuZC50LnByYXRlckBnbWFpbC5jb208
L2E+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj48YnI+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+
PC9kaXY+PGJyPjwvZGl2PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBk
aXI9Imx0ciIgY2xhc3M9ImdtYWlsX2F0dHIiPk9uIFRodSwgTm92IDksIDIwMjMgYXQgNjo0OOKA
r0FNICYjMzk7UmFzdGlzbGF2IEtpc2gmIzM5OyB2aWEgPGEgaHJlZj0ibWFpbHRvOmJsaW51eC1s
aXN0QHJlZGhhdC5jb20iPmJsaW51eC1saXN0QHJlZGhhdC5jb208L2E+ICZsdDs8YSBocmVmPSJt
YWlsdG86YmxpbnV4LWxpc3RAcmVkaGF0LmNvbSI+YmxpbnV4LWxpc3RAcmVkaGF0LmNvbTwvYT4m
Z3Q7IHdyb3RlOjxicj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxl
PSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQs
MjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+SGVsbG8gZXZlcnlvbmUsPGJyPg0KZXZlciBzaW5j
ZSBCZSBteSBBSSBkZW1vbnN0cmF0ZWQgdGhlIGNhcGFiaWxpdGllcyBvZiBHUFQgNCBmb3IgPGJy
Pg0KdW5kZXJzdGFuZGluZyB0aGUgY29udGVudCBvZiBpbWFnZXMsIHdoaWNoIGlzIG5vdCBhIHNp
bmdsZSBiaXQgbGVzcyA8YnI+DQppbXByZXNzaXZlIHRoYW4gaXRzIHRleHR1YWwgYWJpbGl0aWVz
LCBJIHdhcyBsb29raW5nIGZvcndhcmQgdG8gaGF2aW5nIDxicj4NCmFuIEFQSSBJIGNvdWxkIHVz
ZS48YnI+DQpCZWNhdXNlIHRoaXMgYnJpbmdzIGF3ZXNvbWUgcG90ZW50aWFsIGZvciB2YXJpb3Vz
IHVzZS1jYXNlcywgdGhvdWdoIGFsc28gPGJyPg0KZm9yIGVjb25vbWljYWwgcmVhc29ucywgQmUg
bXkgQUkgaXMgbm90IG9uIEFuZHJvaWQgeWV0IGFuZCBJIGNhbiYjMzk7dCA8YnI+DQpyZWFsbHkg
YWZmb3JkIHNwZW5kaW5nICQyMCBtb250aGx5IG9uIGEgQ2hhdEdQVCArIHN1YnNjcmlwdGlvbi48
YnI+DQo8YnI+DQpUaHJlZSBkYXlzIGFnbywgT3BlbkFJIGZpbmFsbHkgaW50cm9kdWNlZCBhIHZp
c2lvbiBBUEksIGFuZCBoZXJlIGlzIG15IDxicj4NCnJlYWxseSBzaW1wbGUsIGJ1dCB3b3JraW5n
IEJlIG15IEFJIGluIHRlcm1pbmFsOjxicj4NCjxhIGhyZWY9Imh0dHBzOi8vZ2l0aHViLmNvbS9S
YXN0aXNsYXZLaXNoL3Zpc2lvbiIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0
cHM6Ly9naXRodWIuY29tL1Jhc3Rpc2xhdktpc2gvdmlzaW9uPC9hPjxicj4NCjxicj4NCkhhdmUg
ZnVuLiBUaGVyZSBpcyBhIGxvdCB0byBlbmpveSE8YnI+DQo8YnI+DQpOb3RlOiBVcGxvYWRpbmcg
aW1hZ2VzIGNhbiB0YWtlIGEgd2hpbGUsIHRob3VnaCBpZiBpdCBhcHBhcmVudGx5IHRha2VzIDxi
cj4NCnRvbyBsb25nLCBpdCYjMzk7cyBsaWtlbHkgZnJvemVuLCBPcGVuQUkgaXMgZGVhbGluZyB3
aXRoIGEgbG90IG9mIGRlbWFuZCA8YnI+DQphZnRlciB0aGVpciBkZXYgY29uZmVyZW5jZSBvbiBz
aXgtdGggTm92ZW1iZXIsIHNvIGNoYXRHUFQgaXMgZG93biBmcm9tIDxicj4NCnRpbWUgdG8gdGlt
ZS4gTXkgc2NyaXB0IGlzIG5vdCB2ZXJ5IHdlbGwgcHJlcGFyZWQgZm9yIHRoaXMgYXQgdGhpcyA8
YnI+DQptb21lbnQsIEkgbWF5IGFkZCBwcm9wZXIgdGltZW91dHMgYW5kIHJldHJ5IG9wdGlvbnMg
aWYgaXQgYmVjb21lcyB0b28gPGJyPg0KYmlnIG9mIGFuIGlzc3VlLCB0aG91Z2ggSSByYXRoZXIg
ZXhwZWN0IHRoaW5ncyB0byBjYWxtIGRvd24gYWdhaW4gYXMgPGJyPg0KdGhpbmdzIGdldCByZXNv
bHZlZCBvbiB0aGUgT3BlbkFJIHNpZGUuPGJyPg0KPGJyPg0KQmVzdCByZWdhcmRzPGJyPg0KPGJy
Pg0KUmFzdGlzbGF2PGJyPg0KPGJyPg0KPGJyPg0KLS0gPGJyPg0KWW91IHJlY2VpdmVkIHRoaXMg
bWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUgc3Vic2NyaWJlZCB0byB0aGUgR29vZ2xlIEdyb3VwcyAm
cXVvdDs8YSBocmVmPSJtYWlsdG86YmxpbnV4LWxpc3RAcmVkaGF0LmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPmJsaW51eC1saXN0QHJlZGhhdC5jb208L2E+JnF1b3Q7IGdyb3VwLjxicj4NClRvIHVuc3Vi
c2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQs
IHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOmJsaW51eC1saXN0JTJCdW5zdWJzY3Jp
YmVAcmVkaGF0LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPmJsaW51eC1saXN0K3Vuc3Vic2NyaWJlQHJl
ZGhhdC5jb208L2E+Ljxicj4NCjxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj4NCg0KPHA+PC9wPgoK
LS0gPGJyIC8+CllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNj
cmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgJnF1b3Q7YmxpbnV4LWxpc3RAcmVkaGF0LmNvbSZx
dW90OyBncm91cC48YnIgLz4KVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9w
IHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJtYWls
dG86YmxpbnV4LWxpc3QrdW5zdWJzY3JpYmVAcmVkaGF0LmNvbSI+YmxpbnV4LWxpc3QrdW5zdWJz
Y3JpYmVAcmVkaGF0LmNvbTwvYT4uPGJyIC8+Cg==
--000000000000a34e8a0609ba1e7f--

