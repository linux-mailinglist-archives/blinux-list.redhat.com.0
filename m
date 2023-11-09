Return-Path: <blinux-list+bncBCM2V5WE3MDBBPGWWSVAMGQEFS25MNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id F03747E71CC
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 19:55:57 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-da3b6438170sf1467017276.1
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 10:55:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699556156; cv=pass;
        d=google.com; s=arc-20160816;
        b=shXUl3Ce6Lel/uYCgwQ0wixTCCy4VJp50TEne3R6dn0o4e8fsbQcjL4lOJuNv9MPWd
         HK0poL5I2ccX5xCsQM53fPNuwOSYa4p2H7ALubR3ywEDevHzIH79QZyuzTpjWlLzNgFD
         itlc7xY3yuK6I2VUTzq3M4NcJny/YjY+5NiAaF7swyHkP9jm56BStHCLbJ82SwgaF3fa
         o0tco8hlyFsRS2hbk3u/tWVs11izB4g+Ap7BK5Cwr4Z6mGLex5Pul9js0c6+4b6e8voo
         JG7VrzDcWhDGx5hBIVCjGK7BC8XIkZ0lmdWvxJ5OJ8go0Q4xVsfyw37Ba27c9laGDrkg
         P2hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :references:in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=37Oh4pQos6R++8puyPDilOB7LzNSV6/o9IcPaLcvMl0=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=yNHgc5EPPmQiU+3RkVje3cbpGVtKt19FgqK2zkAf+JnB6DS0Fc1ncTXKMqbJNUMnIO
         s8XziZ1cWuMjzwbMvZqAV2FwRvQyKSWOg7G7N574UEtyjv/QNoSygPnBcNCy4dH3e+kE
         e/9PtMYGIxWsNhbnCGdAos8zp27uAD1UPGmxMCN983MV7gXhZpUPXhCdBdbwT6Tf6Ni9
         4FYjQ4GAGCcyFA9sfUGEWqD2Oe13eUry0z6r/Tl/ZlphCOHABaP6pObSCGby/1ApMqaF
         5ncQ4blTwC6mi00za+SCRYTHC9D80AQE2PZj0PX57KRXtAhHWKcsE3NPhQROFKzwlZdz
         GfnA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699556156; x=1700160956;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:references:in-reply-to:message-id:subject:from:to:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37Oh4pQos6R++8puyPDilOB7LzNSV6/o9IcPaLcvMl0=;
        b=IVr4WsKKLt7TOsXJy0g/eej4JYOyYYqGWtpl2dMIi84zb3WZCApTntruZ921g0xdy2
         M4T6dYF2ne0X+7V5b8MEZN+lZ6GmXdp/HC3El8dknl1gqCSpsnAWY3UiAgUekwKIn5Cu
         6KxUNdV/DDRJVIN9mt2FUo4Im3ORuBglch5FqwfJWaqd8V0ko0We115A9aCwaId3D4cU
         xAjWLl8CaP6cgvxhRX9iuyuMWW5Vv+stke5kWLv4MFd6GPNsDTsr6q76mlb/HgjD5cjh
         O/0g+EoE+Qji2rIjuU8uBrT26SRXzEAmgvOvWW7ofqy/76elHUvqBM4/gp5Zl2ltrtS8
         McKA==
X-Gm-Message-State: AOJu0YzDhg2Q+bvcsK+5buMGMmIA2cr5zDj6uQxrHM3CqjSB4Jk7FyFR
	k9UnfrpEZNDsLG7lpdk9XdkUNw==
X-Google-Smtp-Source: AGHT+IFLfQqjNStklchjLmNqijxkTByjy/rhuMqx1VVkCVcKhf4qNiZpWbBXgKTOa3gOV2B0RKtjzg==
X-Received: by 2002:a25:ac48:0:b0:da0:3d48:aa68 with SMTP id r8-20020a25ac48000000b00da03d48aa68mr5369044ybd.50.1699556156546;
        Thu, 09 Nov 2023 10:55:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:d44f:0:b0:d7a:e0a5:9256 with SMTP id m76-20020a25d44f000000b00d7ae0a59256ls1397189ybf.2.-pod-prod-03-us;
 Thu, 09 Nov 2023 10:55:55 -0800 (PST)
X-Received: by 2002:a25:b125:0:b0:dae:5a5a:c3b8 with SMTP id g37-20020a25b125000000b00dae5a5ac3b8mr5253238ybj.8.1699556155451;
        Thu, 09 Nov 2023 10:55:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699556155; cv=none;
        d=google.com; s=arc-20160816;
        b=T3T7/Yr/l/RZKjnIhq33kq95IYirti8dvcLm4IDvfTUWahjudKr5LCjwlkK7VEZn/D
         t6zVtJyO/Z2yE+5wZ3tJ2gDygPKwGNRA1z93VtR9i20FDqxYoKNdPiATeV6eA+e/yOvz
         YMZZxFLgkiyl1f6fFCa55CtJIIOG1Msq/ZOXt5KYO45cmPYNqpKuaTmLWCjkqulY8ufF
         GoeLVrCMeZLK8wX++XP+Xl8SC7KEfmn+v69CqqtY05w2P8EPENaKbgWF24ibNj2mLUz4
         YDwg6knoieq7Gl4iQOwN6pWSJm/sbH1UW9+dEys9bbAANr27Fkw9vACX21koP8bLUEDW
         U0KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=VrIAj+dr0n03IUBFouE96XIgbulDHitl4MNVsBVAgoQ=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=PC/CYPpIxwlzHdZH0ktnfcGVioj4JbW3Dhk19DR0tDw73GfQt6t87WLqkIYuMuALMr
         /AzJ9sn8oHhDgoxJIg0fEEYXMrSpG+ipu6x35QVidPenwtzYFMtEZJx44l3LvZ777bej
         Yusm1Z7ejFLVN6Fwo9Kk4e5ajKALIQKIrRWwSZzAkjMVPbSkotFs6r2ikhRxlmjqVcRc
         7U6ykYiIpm8E91y0VZwCB1re7Etytv/Xa3buMEAG51CEZDdp9atQeBgKt0yFWcshKMBJ
         TRAPXvRpFTgNp51ZY/mECpaSeGi0MkY/w4kHAfSv2ddT00nsaB9xnwPvyY3xIOc6kxfL
         mVAA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bp30-20020a05622a1b9e00b0041e3eef7348si3144510qtb.451.2023.11.09.10.55.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 10:55:55 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-134-TsIdDzwFOE28tqpNhiVjZw-1; Thu, 09 Nov 2023 13:55:54 -0500
X-MC-Unique: TsIdDzwFOE28tqpNhiVjZw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6390811000
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 18:55:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C2E7040C6EBB; Thu,  9 Nov 2023 18:55:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBE1440C6EB9
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 18:55:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 902C41C06EC2
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 18:55:53 +0000 (UTC)
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-648-RbAWMCmAOSC6DsBzO5rEdg-1; Thu, 09 Nov 2023 13:55:51 -0500
X-MC-Unique: RbAWMCmAOSC6DsBzO5rEdg-1
Date: Thu, 09 Nov 2023 18:55:45 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: vision, get GPT 4V in your terminal
Message-ID: <3308fe58-de26-49e3-b644-ea5e7fe9b989@protonmail.com>
In-Reply-To: <CAGJxbF4Oz5qjO94Q1O2r7WjbNBZvx+pEM0-GoO4SRbq++Oi0pg@mail.gmail.com>
References: <3161637b-cca3-4215-8cf4-941897c92477@protonmail.com> <CAGJxbF4Oz5qjO94Q1O2r7WjbNBZvx+pEM0-GoO4SRbq++Oi0pg@mail.gmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: multipart/alternative;
 boundary="b1_Yl0cnMMa0wrYAl6WvfBVXgEnIxkISTC2czDA4DIJM"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

This is a multi-part message in MIME format.
--b1_Yl0cnMMa0wrYAl6WvfBVXgEnIxkISTC2czDA4DIJM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Devin, I've just pushed a fix!

Python's type (not)checking can be a pain sometimes. :)

Best regards

Rastislav

D=C5=88a 9. 11. 2023 o 16:47 Devin Prater nap=C3=ADsal(a):

> Wow, this is going to be amazing! Imagine having this in OCRDesktop! My o=
nly issue with it is when I try to add a system message with -s, I get:
>
> Traceback (most recent call last):
> File "/home/devin/.local/bin/vision", line 180, in <module>
> main()
> File "/home/devin/.local/lib/python3.10/site-packages/click/core.py", lin=
e 1157, in __call__
> return self.main(*args, **kwargs)
> File "/home/devin/.local/lib/python3.10/site-packages/click/core.py", lin=
e 1078, in main
> rv =3D self.invoke(ctx)
> File "/home/devin/.local/lib/python3.10/site-packages/click/core.py", lin=
e 1434, in invoke
> return ctx.invoke(self.callback, **ctx.params)
> File "/home/devin/.local/lib/python3.10/site-packages/click/core.py", lin=
e 783, in invoke
> return __callback(*args, **kwargs)
> File "/home/devin/.local/bin/vision", line 161, in main
> response=3Dconversation.generate_response()
> File "/home/devin/.local/bin/vision", line 112, in generate_response
> messages=3D[message.render() for message in self._messages]
> File "/home/devin/.local/bin/vision", line 112, in <listcomp>
> messages=3D[message.render() for message in self._messages]
> AttributeError: 'str' object has no attribute 'render'. Did you mean: 'ce=
nter'?
>
> Devin Prater
> r.d.t.prater@gmail.com
>
> On Thu, Nov 9, 2023 at 6:48=E2=80=AFAM 'Rastislav Kish' via blinux-list@r=
edhat.com <blinux-list@redhat.com> wrote:
>
>> Hello everyone,
>> ever since Be my AI demonstrated the capabilities of GPT 4 for
>> understanding the content of images, which is not a single bit less
>> impressive than its textual abilities, I was looking forward to having
>> an API I could use.
>> Because this brings awesome potential for various use-cases, though also
>> for economical reasons, Be my AI is not on Android yet and I can't
>> really afford spending $20 monthly on a ChatGPT + subscription.
>>
>> Three days ago, OpenAI finally introduced a vision API, and here is my
>> really simple, but working Be my AI in terminal:
>> https://github.com/RastislavKish/vision
>>
>> Have fun. There is a lot to enjoy!
>>
>> Note: Uploading images can take a while, though if it apparently takes
>> too long, it's likely frozen, OpenAI is dealing with a lot of demand
>> after their dev conference on six-th November, so chatGPT is down from
>> time to time. My script is not very well prepared for this at this
>> moment, I may add proper timeouts and retry options if it becomes too
>> big of an issue, though I rather expect things to calm down again as
>> things get resolved on the OpenAI side.
>>
>> Best regards
>>
>> Rastislav
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to [blinux-list+unsubscribe@redhat.com](mailto:blinux-list%2Bunsubs=
cribe@redhat.com).

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--b1_Yl0cnMMa0wrYAl6WvfBVXgEnIxkISTC2czDA4DIJM
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PCFET0NUWVBFIGh0bWw+PGh0bWw+PGhlYWQ+DQogICAgPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVu
dC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiLz4NCiAgPC9oZWFkPg0K
ICA8Ym9keT4NCiAgICA8cD5UaGFua3MgRGV2aW4sIEkmIzM5O3ZlIGp1c3QgcHVzaGVkIGEgZml4
ITwvcD4NCiAgICA8cD5QeXRob24mIzM5O3MgdHlwZSAobm90KWNoZWNraW5nIGNhbiBiZSBhIHBh
aW4gc29tZXRpbWVzLiA6KTxici8+DQogICAgPC9wPg0KICAgIDxwPjxici8+DQogICAgPC9wPg0K
ICAgIDxwPkJlc3QgcmVnYXJkczwvcD4NCiAgICA8cD48YnIvPg0KICAgIDwvcD4NCiAgICA8cD5S
YXN0aXNsYXY8YnIvPg0KICAgIDwvcD4NCiAgICA8cD48YnIvPg0KICAgIDwvcD4NCiAgICA8ZGl2
IGNsYXNzPSJtb3otY2l0ZS1wcmVmaXgiPkTFiGEgOS4gMTEuIDIwMjMgbyAxNjo0NyBEZXZpbiBQ
cmF0ZXINCiAgICAgIG5hcMOtc2FsKGEpOjxici8+DQogICAgPC9kaXY+DQogICAgPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSIgY2l0ZT0ibWlkOkNBR0p4YkY0T3o1cWpPOTRRMU8ycjdXamJOQlp2eCtw
RU0wLUdvTzRTUmJxKytPaTBwZ0BtYWlsLmdtYWlsLmNvbSI+DQogICAgICA8ZGl2IGRpcj0ibHRy
Ij5Xb3csIHRoaXMgaXMgZ29pbmcgdG8gYmUgYW1hemluZyEgSW1hZ2luZSBoYXZpbmcNCiAgICAg
ICAgdGhpcyBpbiBPQ1JEZXNrdG9wISBNeSBvbmx5IGlzc3VlIHdpdGggaXQgaXMgd2hlbiBJIHRy
eSB0byBhZGQgYQ0KICAgICAgICBzeXN0ZW0gbWVzc2FnZSB3aXRoIC1zLCBJIGdldDoNCiAgICAg
ICAgPGRpdj48YnIvPg0KICAgICAgICA8L2Rpdj4NCiAgICAgICAgPGRpdj5UcmFjZWJhY2sgKG1v
c3QgcmVjZW50IGNhbGwgbGFzdCk6IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
DQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqANCiAgICAgICAg
ICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxi
ci8+DQogICAgICAgICAgwqAgRmlsZSAmIzM0Oy9ob21lL2RldmluLy5sb2NhbC9iaW4vdmlzaW9u
JiMzNDssIGxpbmUgMTgwLCBpbg0KICAgICAgICAgICZsdDttb2R1bGUmZ3Q7IMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgDQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyLz4NCiAgICAgICAgICDCoCDCoCBtYWluKCkg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqANCiAgICAgICAgICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgPGJyLz4NCiAgICAgICAgICDCoCBGaWxlDQogICAgICAgICAgJiMzNDsvaG9t
ZS9kZXZpbi8ubG9jYWwvbGliL3B5dGhvbjMuMTAvc2l0ZS1wYWNrYWdlcy9jbGljay9jb3JlLnB5
JiMzNDssDQogICAgICAgICAgbGluZSAxMTU3LCBpbiBfX2NhbGxfXyDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyLz4NCiAgICAgICAgICDCoCDCoCByZXR1
cm4gc2VsZi5tYWluKCphcmdzLCAqKmt3YXJncykgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqANCiAgICAgICAgICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0K
ICAgICAgICAgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IDxici8+DQogICAgICAgICAgwqAgRmlsZQ0KICAgICAgICAgICYjMzQ7L2hvbWUvZGV2aW4vLmxv
Y2FsL2xpYi9weXRob24zLjEwL3NpdGUtcGFja2FnZXMvY2xpY2svY29yZS5weSYjMzQ7LA0KICAg
ICAgICAgIGxpbmUgMTA3OCwgaW4gbWFpbiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyLz4NCiAgICAgICAgICDCoCDCoCBydiA9IHNlbGYuaW52
b2tlKGN0eCkgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqANCiAgICAgICAgICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAg
ICAgICAgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxi
ci8+DQogICAgICAgICAgwqAgRmlsZQ0KICAgICAgICAgICYjMzQ7L2hvbWUvZGV2aW4vLmxvY2Fs
L2xpYi9weXRob24zLjEwL3NpdGUtcGFja2FnZXMvY2xpY2svY29yZS5weSYjMzQ7LA0KICAgICAg
ICAgIGxpbmUgMTQzNCwgaW4gaW52b2tlIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgDQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqA8YnIvPg0KICAgICAgICAgIMKgIMKgIHJldHVybiBjdHguaW52b2tl
KHNlbGYuY2FsbGJhY2ssICoqY3R4LnBhcmFtcykgwqAgwqAgwqAgwqAgwqAgwqANCiAgICAgICAg
ICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgPGJyLz4NCiAgICAgICAgICDC
oCBGaWxlDQogICAgICAgICAgJiMzNDsvaG9tZS9kZXZpbi8ubG9jYWwvbGliL3B5dGhvbjMuMTAv
c2l0ZS1wYWNrYWdlcy9jbGljay9jb3JlLnB5JiMzNDssDQogICAgICAgICAgbGluZSA3ODMsIGlu
IGludm9rZSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IDxici8+DQogICAgICAgICAgwqAgwqAgcmV0dXJuIF9fY2FsbGJhY2soKmFyZ3MsICoqa3dhcmdz
KSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgDQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqA8YnIvPg0KICAgICAgICAgIMKgIEZpbGUgJiMz
NDsvaG9tZS9kZXZpbi8ubG9jYWwvYmluL3Zpc2lvbiYjMzQ7LCBsaW5lIDE2MSwgaW4gbWFpbiDC
oCDCoA0KICAgICAgICAgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgDQogICAg
ICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJy
Lz4NCiAgICAgICAgICDCoCDCoCByZXNwb25zZT1jb252ZXJzYXRpb24uZ2VuZXJhdGVfcmVzcG9u
c2UoKSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgDQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyLz4NCiAgICAgICAgICDCoCBGaWxlICYjMzQ7L2hvbWUv
ZGV2aW4vLmxvY2FsL2Jpbi92aXNpb24mIzM0OywgbGluZSAxMTIsIGluDQogICAgICAgICAgZ2Vu
ZXJhdGVfcmVzcG9uc2UgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqANCiAgICAgICAgICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDxici8+DQogICAgICAgICAg
wqAgwqAgbWVzc2FnZXM9W21lc3NhZ2UucmVuZGVyKCkgZm9yIG1lc3NhZ2UgaW4gc2VsZi5fbWVz
c2FnZXNdDQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqANCiAg
ICAgICAgICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA8
YnIvPg0KICAgICAgICAgIMKgIEZpbGUgJiMzNDsvaG9tZS9kZXZpbi8ubG9jYWwvYmluL3Zpc2lv
biYjMzQ7LCBsaW5lIDExMiwgaW4NCiAgICAgICAgICAmbHQ7bGlzdGNvbXAmZ3Q7IMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgDQogICAgICAgICAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgPGJyLz4NCiAgICAgICAgICDCoCDCoCBtZXNzYWdl
cz1bbWVzc2FnZS5yZW5kZXIoKSBmb3IgbWVzc2FnZSBpbiBzZWxmLl9tZXNzYWdlc10NCiAgICAg
ICAgICDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoA0KICAgICAgICAgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIDxici8+DQogICAgICAg
ICAgQXR0cmlidXRlRXJyb3I6ICYjMzk7c3RyJiMzOTsgb2JqZWN0IGhhcyBubyBhdHRyaWJ1dGUg
JiMzOTtyZW5kZXImIzM5Oy4gRGlkDQogICAgICAgICAgeW91IG1lYW46ICYjMzk7Y2VudGVyJiMz
OTs/wqA8L2Rpdj4NCiAgICAgICAgPGRpdj48YnIvPg0KICAgICAgICA8L2Rpdj4NCiAgICAgICAg
PGRpdj48YnIvPg0KICAgICAgICAgIDxkaXY+DQogICAgICAgICAgICA8ZGl2IGRpcj0ibHRyIiBj
bGFzcz0iZ21haWxfc2lnbmF0dXJlIiBkYXRhLXNtYXJ0bWFpbD0iZ21haWxfc2lnbmF0dXJlIj4N
CiAgICAgICAgICAgICAgPGRpdiBkaXI9Imx0ciI+DQogICAgICAgICAgICAgICAgPGRpdiBkaXI9
Imx0ciI+DQogICAgICAgICAgICAgICAgICA8ZGl2IGRpcj0ibHRyIj5EZXZpbiBQcmF0ZXI8L2Rp
dj4NCiAgICAgICAgICAgICAgICAgIDxkaXY+PGEgaHJlZj0ibWFpbHRvOnIuZC50LnByYXRlckBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIiBtb3otZG8tbm90LXNlbmQ9InRydWUiIGNsYXNzPSJt
b3otdHh0LWxpbmstZnJlZXRleHQiPnIuZC50LnByYXRlckBnbWFpbC5jb208L2E+PC9kaXY+DQog
ICAgICAgICAgICAgICAgICA8ZGl2Pjxici8+DQogICAgICAgICAgICAgICAgICA8L2Rpdj4NCiAg
ICAgICAgICAgICAgICAgIDxkaXY+PGJyLz4NCiAgICAgICAgICAgICAgICAgIDwvZGl2Pg0KICAg
ICAgICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgICAgICA8L2Rpdj4NCiAgICAgICAgICAgIDwv
ZGl2Pg0KICAgICAgICAgIDwvZGl2Pg0KICAgICAgICAgIDxici8+DQogICAgICAgIDwvZGl2Pg0K
ICAgICAgPC9kaXY+DQogICAgICA8YnIvPg0KICAgICAgPGRpdiBjbGFzcz0iZ21haWxfcXVvdGUi
Pg0KICAgICAgICA8ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+T24gVGh1LCBOb3Yg
OSwgMjAyMyBhdCA2OjQ44oCvQU0NCiAgICAgICAgICAmIzM5O1Jhc3Rpc2xhdiBLaXNoJiMzOTsg
dmlhIDxhIGhyZWY9Im1haWx0bzpibGludXgtbGlzdEByZWRoYXQuY29tIiBtb3otZG8tbm90LXNl
bmQ9InRydWUiIGNsYXNzPSJtb3otdHh0LWxpbmstZnJlZXRleHQiPmJsaW51eC1saXN0QHJlZGhh
dC5jb208L2E+DQogICAgICAgICAgJmx0OzxhIGhyZWY9Im1haWx0bzpibGludXgtbGlzdEByZWRo
YXQuY29tIiBtb3otZG8tbm90LXNlbmQ9InRydWUiIGNsYXNzPSJtb3otdHh0LWxpbmstZnJlZXRl
eHQiPmJsaW51eC1saXN0QHJlZGhhdC5jb208L2E+Jmd0Ow0KICAgICAgICAgIHdyb3RlOjxici8+
DQogICAgICAgIDwvZGl2Pg0KICAgICAgICA8YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUi
PkhlbGxvIGV2ZXJ5b25lLDxici8+DQogICAgICAgICAgZXZlciBzaW5jZSBCZSBteSBBSSBkZW1v
bnN0cmF0ZWQgdGhlIGNhcGFiaWxpdGllcyBvZiBHUFQgNCBmb3INCiAgICAgICAgICA8YnIvPg0K
ICAgICAgICAgIHVuZGVyc3RhbmRpbmcgdGhlIGNvbnRlbnQgb2YgaW1hZ2VzLCB3aGljaCBpcyBu
b3QgYSBzaW5nbGUgYml0DQogICAgICAgICAgbGVzcyA8YnIvPg0KICAgICAgICAgIGltcHJlc3Np
dmUgdGhhbiBpdHMgdGV4dHVhbCBhYmlsaXRpZXMsIEkgd2FzIGxvb2tpbmcgZm9yd2FyZA0KICAg
ICAgICAgIHRvIGhhdmluZyA8YnIvPg0KICAgICAgICAgIGFuIEFQSSBJIGNvdWxkIHVzZS48YnIv
Pg0KICAgICAgICAgIEJlY2F1c2UgdGhpcyBicmluZ3MgYXdlc29tZSBwb3RlbnRpYWwgZm9yIHZh
cmlvdXMgdXNlLWNhc2VzLA0KICAgICAgICAgIHRob3VnaCBhbHNvIDxici8+DQogICAgICAgICAg
Zm9yIGVjb25vbWljYWwgcmVhc29ucywgQmUgbXkgQUkgaXMgbm90IG9uIEFuZHJvaWQgeWV0IGFu
ZCBJDQogICAgICAgICAgY2FuJiMzOTt0IDxici8+DQogICAgICAgICAgcmVhbGx5IGFmZm9yZCBz
cGVuZGluZyAkMjAgbW9udGhseSBvbiBhIENoYXRHUFQgKw0KICAgICAgICAgIHN1YnNjcmlwdGlv
bi48YnIvPg0KICAgICAgICAgIDxici8+DQogICAgICAgICAgVGhyZWUgZGF5cyBhZ28sIE9wZW5B
SSBmaW5hbGx5IGludHJvZHVjZWQgYSB2aXNpb24gQVBJLCBhbmQNCiAgICAgICAgICBoZXJlIGlz
IG15IDxici8+DQogICAgICAgICAgcmVhbGx5IHNpbXBsZSwgYnV0IHdvcmtpbmcgQmUgbXkgQUkg
aW4gdGVybWluYWw6PGJyLz4NCiAgICAgICAgICA8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20v
UmFzdGlzbGF2S2lzaC92aXNpb24iIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiIG1v
ei1kby1ub3Qtc2VuZD0idHJ1ZSIgY2xhc3M9Im1vei10eHQtbGluay1mcmVldGV4dCI+aHR0cHM6
Ly9naXRodWIuY29tL1Jhc3Rpc2xhdktpc2gvdmlzaW9uPC9hPjxici8+DQogICAgICAgICAgPGJy
Lz4NCiAgICAgICAgICBIYXZlIGZ1bi4gVGhlcmUgaXMgYSBsb3QgdG8gZW5qb3khPGJyLz4NCiAg
ICAgICAgICA8YnIvPg0KICAgICAgICAgIE5vdGU6IFVwbG9hZGluZyBpbWFnZXMgY2FuIHRha2Ug
YSB3aGlsZSwgdGhvdWdoIGlmIGl0DQogICAgICAgICAgYXBwYXJlbnRseSB0YWtlcyA8YnIvPg0K
ICAgICAgICAgIHRvbyBsb25nLCBpdCYjMzk7cyBsaWtlbHkgZnJvemVuLCBPcGVuQUkgaXMgZGVh
bGluZyB3aXRoIGEgbG90IG9mDQogICAgICAgICAgZGVtYW5kIDxici8+DQogICAgICAgICAgYWZ0
ZXIgdGhlaXIgZGV2IGNvbmZlcmVuY2Ugb24gc2l4LXRoIE5vdmVtYmVyLCBzbyBjaGF0R1BUIGlz
DQogICAgICAgICAgZG93biBmcm9tIDxici8+DQogICAgICAgICAgdGltZSB0byB0aW1lLiBNeSBz
Y3JpcHQgaXMgbm90IHZlcnkgd2VsbCBwcmVwYXJlZCBmb3IgdGhpcyBhdA0KICAgICAgICAgIHRo
aXMgPGJyLz4NCiAgICAgICAgICBtb21lbnQsIEkgbWF5IGFkZCBwcm9wZXIgdGltZW91dHMgYW5k
IHJldHJ5IG9wdGlvbnMgaWYgaXQNCiAgICAgICAgICBiZWNvbWVzIHRvbyA8YnIvPg0KICAgICAg
ICAgIGJpZyBvZiBhbiBpc3N1ZSwgdGhvdWdoIEkgcmF0aGVyIGV4cGVjdCB0aGluZ3MgdG8gY2Fs
bSBkb3duDQogICAgICAgICAgYWdhaW4gYXMgPGJyLz4NCiAgICAgICAgICB0aGluZ3MgZ2V0IHJl
c29sdmVkIG9uIHRoZSBPcGVuQUkgc2lkZS48YnIvPg0KICAgICAgICAgIDxici8+DQogICAgICAg
ICAgQmVzdCByZWdhcmRzPGJyLz4NCiAgICAgICAgICA8YnIvPg0KICAgICAgICAgIFJhc3Rpc2xh
djxici8+DQogICAgICAgICAgPGJyLz4NCiAgICAgICAgICA8YnIvPg0KICAgICAgICAgIC0tIDxi
ci8+DQogICAgICAgICAgWW91IHJlY2VpdmVkIHRoaXMgbWVzc2FnZSBiZWNhdXNlIHlvdSBhcmUg
c3Vic2NyaWJlZCB0byB0aGUNCiAgICAgICAgICBHb29nbGUgR3JvdXBzICYjMzQ7PGEgaHJlZj0i
bWFpbHRvOmJsaW51eC1saXN0QHJlZGhhdC5jb20iIHRhcmdldD0iX2JsYW5rIiBtb3otZG8tbm90
LXNlbmQ9InRydWUiIGNsYXNzPSJtb3otdHh0LWxpbmstZnJlZXRleHQiPmJsaW51eC1saXN0QHJl
ZGhhdC5jb208L2E+JiMzNDsNCiAgICAgICAgICBncm91cC48YnIvPg0KICAgICAgICAgIFRvIHVu
c3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20N
CiAgICAgICAgICBpdCwgc2VuZCBhbiBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86YmxpbnV4LWxp
c3QlMkJ1bnN1YnNjcmliZUByZWRoYXQuY29tIiB0YXJnZXQ9Il9ibGFuayIgbW96LWRvLW5vdC1z
ZW5kPSJ0cnVlIj5ibGludXgtbGlzdCt1bnN1YnNjcmliZUByZWRoYXQuY29tPC9hPi48YnIvPg0K
ICAgICAgICAgIDxici8+DQogICAgICAgIDwvYmxvY2txdW90ZT4NCiAgICAgIDwvZGl2Pg0KICAg
IDwvYmxvY2txdW90ZT4NCiAgDQoNCjwvYm9keT48L2h0bWw+DQoNCjxwPjwvcD4KCi0tIDxiciAv
PgpZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRv
IHRoZSBHb29nbGUgR3JvdXBzICZxdW90O2JsaW51eC1saXN0QHJlZGhhdC5jb20mcXVvdDsgZ3Jv
dXAuPGJyIC8+ClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZp
bmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8gPGEgaHJlZj0ibWFpbHRvOmJsaW51
eC1saXN0K3Vuc3Vic2NyaWJlQHJlZGhhdC5jb20iPmJsaW51eC1saXN0K3Vuc3Vic2NyaWJlQHJl
ZGhhdC5jb208L2E+LjxiciAvPgo=
--b1_Yl0cnMMa0wrYAl6WvfBVXgEnIxkISTC2czDA4DIJM--

